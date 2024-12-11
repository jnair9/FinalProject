#version 330 core

/*default camera matrices. do not modify.*/
layout(std140) uniform camera
{
    mat4 projection;    /*camera's projection matrix*/
    mat4 view;          /*camera's view matrix*/
    mat4 pvm;           /*camera's projection*view*model matrix*/
    mat4 ortho;         /*camera's ortho projection matrix*/
    vec4 position;      /*camera's position in world space*/
};

/* set light ubo. do not modify.*/
struct light
{
    ivec4 att;
    vec4 pos; // position
    vec4 dir;
    vec4 amb; // ambient intensity
    vec4 dif; // diffuse intensity
    vec4 spec; // specular intensity
    vec4 atten;
    vec4 parr;
};
layout(std140) uniform lights
{
    vec4 amb;
    ivec4 lt_att; // lt_att[0] = number of lights
    light lt[4];
};

/*input variables*/
in vec3 vtx_normal; // vtx normal in world space
in vec3 vtx_position; // vtx position in world space
in vec3 vtx_model_position; // vtx position in model space
in vec4 vtx_color;
in vec2 vtx_uv;
in vec3 vtx_tangent;

uniform sampler2D tex_color;   /* texture sampler for color */
uniform float iTime;           /* time variable for animation */
uniform int iFrame;            /* frame count for animation */

/*output variables*/
out vec4 frag_color;

float random(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

mat2 rot_matrix(float rot) {
    return mat2(
        cos(rot), -sin(rot),
        sin(rot),  cos(rot)
    );
}

vec4 sparkle(float time, float id, vec2 uv) {
    float lifespan = random(vec2(id * 1232.23232)) * 2.0 + 3.5; // Increase random lifespan
    float pgen = floor(time / lifespan);
    float lifetime = time - lifespan * pgen;
    float pseed = id * 15.3 + pgen * 60.3;

    vec2 noise_offset = vec2(random(vec2(pseed * 1.5 + 4.0)) - 0.5, random(vec2(pseed * 120.2 + 0.7)) - 0.5) * 0.5;
    vec2 pos = uv - vec2(
        random(vec2(pseed * 1.5)) - 0.5 + noise_offset.x,
        random(vec2(pseed * 120.2)) - 0.5 + noise_offset.y
    );

    vec2 vel = vec2(
        random(vec2(pseed * -5.5 + 130.3243)) * 0.08 - 0.04, // Increase velocity
        random(vec2(pseed * -60.3 + 40.323043)) * -0.08 - 0.04
    );

    pos += vel * lifetime * 2.0; // Double the effect of lifetime on velocity
    pos = rot_matrix(random(vec2(pseed * 25.0 + 5.0)) * 0.4 - 0.2) * pos; // Increase rotation randomness

    float dx = 0.03; // Increase particle spread
    float dy = 0.03;
    float func = pow(abs(pos.x / dx), 0.5) + pow(abs(pos.y / dy), 0.5) - 0.5;

    vec3 start_color = vec3(1.0, 0.8, 0.3);
    vec3 end_color = start_color + vec3(0.3); // Increase brightness for a more vivid effect

    vec4 res;
    res.xyz = mix(start_color, end_color, sin(9.0 * (time + 15.5454)) * 0.5 + 0.5);
    res.w = smoothstep(0.0, 1.2, 1.0 - func);

    float fade = exp(6.93187 * (lifetime / lifespan));
    res.w = mix(res.w, 0.0, fade);

    return res;
}

vec3 renderSparkles(vec2 uv) {
    vec3 col = vec3(0.0);
    for (int i = 0; i < 150; ++i) { // Increase particle count
        float id = float(i);
        vec4 sparkleResult = sparkle(iTime, id, uv);
        col = mix(col, sparkleResult.xyz, sparkleResult.w);
    }
    return col;
}

void main()
{
    vec3 sparkleColor = renderSparkles(vtx_uv);
    vec4 texColor = texture(tex_color, vtx_uv);

    vec3 combinedColor = mix(sparkleColor, texColor.rgb, 0.7);

    if (texColor.a < 0.1)
    {
       frag_color = vec4(0.0, 0.0, 0.0, 0.0); // Transparent black
        return;
    }
    float sparkleAlpha = max(texColor.a, 0.5);
    frag_color = vec4(combinedColor, sparkleAlpha);
}
