#version 330 core
/*
This simple shader draws a sparkle particle effect.
Every particle is drawn as a superellipse. 
*/
out vec4 fragColor;
in vec2 fragCoord;
#define PARTICLE_COUNT 70
uniform vec3      iResolution;           // viewport resolution (in pixels)
uniform float     iTime;                 // shader playback time (in seconds)
uniform float     iTimeDelta;            // render time (in seconds)
uniform float     iFrameRate;            // shader frame rate
uniform int       iFrame;                // shader playback frame
uniform float     iChannelTime[4];       // channel playback time (in seconds)
uniform vec3      iChannelResolution[4]; // channel resolution (in pixels)
uniform vec4      iMouse;                // mouse pixel coords. xy: current (if MLB down), zw: click
uniform vec4      iDate;                 // (year, month, day, time in seconds)

float hash( float n ) { return fract(sin(n)*753.5453123); }

float noise( in vec2 x )
{
    vec2 p = floor(x);
    vec2 f = fract(x);
    f = f*f*(3.0-2.0*f);
	
    float n = p.x + p.y*157.0;
    return mix(mix( hash(n+  0.0), hash(n+  1.0),f.x),
                   mix( hash(n+157.0), hash(n+158.0),f.x),f.y);
}

// 2D rotation matrix by approximately 36 degrees.
mat2 m = mat2(0.8, 0.6, -0.6, 0.8);

float fbm(vec2 r) {
      
    
    float f;
    
    // rotate every octave to add more variation. 
    f  = 0.5000*noise( r ); r = r*m*2.01;
    f += 0.2500*noise( r ); r = r*m*2.02;
    f += 0.1250*noise( r ); r = r*m*2.03;
    f += 0.0625*noise( r ); r = r*m*2.01;
    
    return f;   
}

float rand(float co){
    return fract(sin(dot(vec2(co ,co ) ,vec2(12.9898,78.233))) * 43758.5453);
}

float rand_range(float seed, float low, float high) {
	return low + (high - low) * rand(seed);
}


vec3 rand_color(float seed, vec3 col, vec3 variation) {
    return vec3(
        col.x + rand_range(seed,-variation.x, +variation.x),
        col.y + rand_range(seed,-variation.y, +variation.y),
        col.z + rand_range(seed,-variation.z, +variation.z));
}


// Rotation matrix for rotating a point around the origin.
// rot is in radians.
mat2 rot_matrix(float rot) {
    return mat2(    
        cos(rot), -sin(rot),
        sin(rot),  cos(rot)
    );
}


// id = particle id
vec4 sparkle(float time, float id, vec2 q) { 
   
    float lifespan = rand_range(id*1232.23232, 3.0, 4.5);
    
    // pgen = particle generation
    // every time a particle has outlived its lifespan,
    // it is respawned as a new particle at a new position
    // the generation of this new particle is one plus
    // the generation of the old particle. 
    float pgen = float(int(time / lifespan));
    
    // how long the particle of the current generation has lived. 
    float lifetime = time - lifespan * pgen;
    
    // pseed is used to determine the random attributes of the particle.
    // two particles with the same id but different generations
    // are essentially different particles.
    float pseed = id *12.2 + pgen * 50.3;
    
    
    // we globally move all particles in an ellipse at this speed.
    float rot_speed = 0.0454;
    
    // ranges from -0.2 to  0.9
    float xsource = 0.35 + 0.55* cos(time*rot_speed);
    //float xsource = 0.2;
    
    // ranges from -0.40 to 0.15
    float ysource = -0.125 + 0.27500 * sin(time*rot_speed);
    
    // inital particle position.
    vec2 pos =  q - vec2(
            rand_range(pseed*1.3+3.0, xsource - 0.2, xsource + 0.2),   
            rand_range(pseed*113.2+0.6, ysource-0.02, ysource+0.02)          
            );
    
    // particle velocity
    vec2 vel = vec2(  
        rand_range(pseed*-4.4314+123.3243, -0.012, +0.012),       
        rand_range(pseed*-54.3232+33.323043, -0.06, -0.04)        
            );
    
    // move particle based on velocity.
    pos += vel * lifetime;
    
    
    
    // controls the diameter of the superellipse.
    // we vary it over the lifetime to animate the particle.
    float dx = 0.02 + 0.01*sin(9.0*(time+pseed*12.5454));
    float dy = 0.02 + 0.01*sin(9.0*(time+pseed*223.323) );
    
    
    // slightly rotate the superellipse randomly.
    float rot = rand_range(pseed*23.33+3.4353, -0.10, 0.10);
    pos = rot_matrix(rot) * pos;
    
    // every particle is described by a superellipse
    // https://en.wikipedia.org/wiki/Superellipse
    float func =
        pow(abs(pos.x/ (dx)  ), 0.5)  + pow(abs(pos.y/dy), 0.5) - 0.5;
    
    vec4 res;
    
    vec3 start_color = rand_color(pseed *19.3232, 
                         vec3(0.9,0.9,0),
                         vec3(0.4,0.4,0.4)
                         );
    
    // now rgb-value over 1.0 allowed.
    if(start_color.r > 1.0) {
        start_color.r = 1.0;
    } 
    if(start_color.g > 1.0) {
        start_color.g = 1.0;
    }
    
    vec3 end_color;
    
    if(start_color.r < 0.85 && start_color.r < 0.85) {
    
     	end_color = start_color + vec3(0.10);
       
    } else {
        
        end_color = start_color - vec3(0.10);
    }
    
    // slightly vary color over lifetime; 
    // makes for a small blinking effect.
    float f= 1.0/2.0 + (  sin(9.0*(time+12.5454))  ) / 2.0;
    res.xyz = mix(start_color, end_color, f);
    
    
    
    // uncomment this section to overlay a noise function over the particles.
    // this adds more color variation to the individual particles.
    // however, be vary that this is VERY slow. 
    /*
    pos *= 100.0;
      
    vec3 rainbow = vec3(
         fbm(pos + pseed * 10.430 + vec2(0.2,0.1)),
         fbm(pos + pseed * 12.5443 + vec2(0.3554,0.94343)),
         fbm(pos + pseed * -12.12 + vec2(1.8343,13.23454)) 

        );
    
    res.xyz = mix(res.xyz, rainbow, 0.3);
    */
    
    // we use this value to combine the particle with the rest
    // of the image.
    res.w = smoothstep(0.0, 1.1, 1.0-func);
    
    //fade out a particle quickly when its about to die. 
    // but before that time, leave it mostly unchanged.
    f = 0.000976175 * exp(6.93187* (lifetime/lifespan) );
    res.w = mix(res.w, 0.0, f);
    
    return res;
}

void main()
{
 
    vec2 p = fragCoord.xy / iResolution.xy;
    p.x *= iResolution.x/iResolution.y;
  
    vec3 col = vec3(0,0,0); // black background color. 

    vec2 q = p - vec2(0.5,0.5);
   
    for(int i = 0; i <PARTICLE_COUNT; i += 1){
       
        // particle id
        float id = float(i);
         
        vec4 res = sparkle(iTime, id, q);
    
        // combine particle with image.
        col = mix(col, res.xyz, res.w);       
    }
    

    fragColor = vec4(col,1.0);
    
    
}
// #version 330 core

// uniform vec2 iResolution;       // Screen resolution
// uniform float iTime;            // Time variable for animation
// in vec2 fragCoord;              // Fragment coordinates
// out vec4 outputColor;           // Output color

// #define PI 3.14159265359
// #define TWO_PI 6.28318530718

// /////////////////////////////////////////////////////
// // Smooth Noise Function
// /////////////////////////////////////////////////////
// float noise(vec2 p) {
//     return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453);
// }

// float smoothNoise(vec2 p) {
//     vec2 i = floor(p);
//     vec2 f = fract(p);
//     f = f * f * (3.0 - 2.0 * f); // Smooth interpolation
//     return mix(mix(noise(i + vec2(0.0, 0.0)), noise(i + vec2(1.0, 0.0)), f.x),
//                mix(noise(i + vec2(0.0, 1.0)), noise(i + vec2(1.0, 1.0)), f.x), f.y);
// }

// /////////////////////////////////////////////////////
// // Turbulence Function for Flame Dynamics
// /////////////////////////////////////////////////////
// float turbulence(vec2 p) {
//     float t = 0.0;
//     float scale = 1.0;
//     for (int i = 0; i < 6; i++) { // Increase iterations for finer details
//         t += abs(smoothNoise(p * scale)) / scale;
//         scale *= 2.0;
//     }
//     return t;
// }

// /////////////////////////////////////////////////////
// // Flame Rendering Function
// /////////////////////////////////////////////////////
// vec3 renderFlame(vec2 fragPos, float time) {
//     // Center the flame at the bottom of the screen
//     fragPos -= vec2(0.0, -0.5); // Shift origin to screen center bottom

//     // Add parabolic scaling for a wider base and narrower top
//     fragPos.y *= 1.5 - 0.5 * fragPos.y;

//     // Reverse vertical flow for upward motion
//     vec2 p = fragPos * vec2(1.0, 2.0) - vec2(0.0, time * 3.); // Increased speed

//     // Turbulence for dynamic flame shapes
//     float n = turbulence(p * 3.0) - smoothNoise(p);

//     // Flame intensity based on position and noise
//     float intensity = smoothstep(0.4, 0.0, abs(fragPos.x) + n - fragPos.y);

//     // Core of the flame (sharp, bright yellow)
//     float core = smoothstep(0.3, 0.0, length(fragPos - vec2(0.0, -0.5)));

//     // Flame color gradient (yellow to red)
//     vec3 color = mix(vec3(1.0, 0.3, 0.0), vec3(1.0, 0.8, 0.2), intensity);
//     color = mix(color, vec3(1.0, 0.9, 0.3), core); // Blend core brightness

//     return color * intensity;
// }

// /////////////////////////////////////////////////////
// // Main Rendering Function
// /////////////////////////////////////////////////////
// void mainImage(out vec4 outputColor, in vec2 fragCoord) {
//     // Transform fragment coordinates to normalized device coordinates
//     vec2 fragPos = (fragCoord - 0.5 * iResolution.xy) / iResolution.y;

//     // Define the window for the flame
//     vec2 windowMin = vec2(-0.5, -0.5); // Bottom-left corner of the window (normalized coordinates)
//     vec2 windowMax = vec2(0.5, 0.5);  // Top-right corner of the window (normalized coordinates)

//     // Check if the fragment is within the window
//     if (fragPos.x < windowMin.x || fragPos.x > windowMax.x || fragPos.y < windowMin.y || fragPos.y > windowMax.y) {
//         outputColor = vec4(0.0, 0.0, 0.0, 1.0); // Outside the window: set to black
//         return;
//     }

//     // Render single centered flame within the window
//     vec3 flameColor = renderFlame(fragPos, iTime);

//     outputColor = vec4(flameColor, 1.0);
// }

// void main() {
//     mainImage(outputColor, fragCoord);
// }
