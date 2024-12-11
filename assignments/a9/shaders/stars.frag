#version 330 core

uniform vec2 iResolution;
uniform float iTime;
uniform int iFrame;

uniform sampler2D tex_buzz; // Particle texture sampler

in vec3 vtx_pos; // [-1, 1]
in vec2 vtx_uv; // [0, 1]

out vec4 frag_color;

#define PARTICLE_COUNT 70

// SPARKLE EFFECT FUNCTIONS
float hash(float n) { return fract(sin(n) * 753.5453123); }

float rand_range(float seed, float low, float high) {
    return low + (high - low) * fract(sin(seed) * 43758.5453);
}

vec3 rand_color(float seed, vec3 col, vec3 variation) {
    return vec3(
        col.x + rand_range(seed, -variation.x, variation.x),
        col.y + rand_range(seed, -variation.y, variation.y),
        col.z + rand_range(seed, -variation.z, variation.z));
}

mat2 rot_matrix(float rot) {
    return mat2(
        cos(rot), -sin(rot),
        sin(rot),  cos(rot)
    );
}

vec4 sparkle(float time, float id, vec2 uv) {
    float lifespan = rand_range(id * 1232.23232, 3.0, 4.5);
    float pgen = floor(time / lifespan);
    float lifetime = time - lifespan * pgen;
    float pseed = id * 12.2 + pgen * 50.3;

    float xsource = 0.35 + 0.55 * cos(time * 0.0454);
    float ysource = -0.125 + 0.27500 * sin(time * 0.0454);

    vec2 pos = uv - vec2(
        rand_range(pseed * 1.3 + 3.0, xsource - 0.2, xsource + 0.2),
        rand_range(pseed * 113.2 + 0.6, ysource - 0.02, ysource + 0.02)
    );

    vec2 vel = vec2(
        rand_range(pseed * -4.4314 + 123.3243, -0.012, 0.012),
        rand_range(pseed * -54.3232 + 33.323043, -0.06, -0.04)
    );

    pos += vel * lifetime;

    float dx = 0.02 + 0.01 * sin(9.0 * (time + pseed * 12.5454));
    float dy = 0.02 + 0.01 * sin(9.0 * (time + pseed * 223.323));
    pos = rot_matrix(rand_range(pseed * 23.33 + 3.4353, -0.10, 0.10)) * pos;

    float func = pow(abs(pos.x / dx), 0.5) + pow(abs(pos.y / dy), 0.5) - 0.5;

    vec3 start_color = rand_color(pseed * 19.3232, vec3(0.9, 0.9, 0), vec3(0.4, 0.4, 0.4));
    vec3 end_color = start_color + vec3(0.1);

    vec4 res;
    res.xyz = mix(start_color, end_color, sin(9.0 * (time + 12.5454)) * 0.5 + 0.5);
    res.w = smoothstep(0.0, 1.1, 1.0 - func);

    float fade = exp(6.93187 * (lifetime / lifespan));
    res.w = mix(res.w, 0.0, fade);

    return res;
}

vec3 renderSparkles(vec2 uv) {
    vec3 col = vec3(0.0);
    for (int i = 0; i < PARTICLE_COUNT; ++i) {
        float id = float(i);
        vec4 sparkleResult = sparkle(iTime, id, uv);
        col = mix(col, sparkleResult.xyz, sparkleResult.w);
    }
    return col;
}

// MAIN FUNCTION
void main() {
    vec2 uv = vtx_pos.xy;
    vec3 sparkleColor = renderSparkles(uv);

    vec2 textureUV = vec2(vtx_uv.x, -vtx_uv.y);
    vec4 texColor = texture(tex_buzz, textureUV); // Sample texture, including alpha

    // Combine sparkle color with texture
    vec3 combinedColor = mix(sparkleColor, texColor.rgb, (sin(iTime) + 1.0) * 0.1);

    // Alpha blending discard logic
    if (texColor.a < 0.1) {
        discard;
    }

    // Set the alpha of the sparkle effect
    float sparkleAlpha = max(texColor.a, 0.5); // Adjust as needed for transparency intensity
    frag_color = vec4(combinedColor, sparkleAlpha);
}

