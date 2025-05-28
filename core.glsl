#ifdef GL_ES
precision highp float;
#else
precision lowp float;
#endif

uniform highp float u_time;
uniform vec2 u_resolution;
uniform sampler2D u_texture_0;

#define invetColor 1.0

#include "pragma/aditionalFUNC/varialHeaDER.glsl"
#include "pragma/aditionalFUNC/invertFUncHEader.hpp"
#include "pragma/caustics.glsl"

void main(){
    vec2 coord = gl_FragCoord.xy / u_resolution;
    vec3 caustics = renderingTextureTRACER(coord, u_time);
    vec3 final = vec3(0.3255, 0.3882, 0.5216) * caustics;
    gl_FragColor = vec4(final, 1.0);
}
