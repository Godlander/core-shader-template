#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in vec2 texCoord0;
in float vertexDistance;
in vec4 vertexColor;
in vec4 lightColor;
#ifdef OVERLAY
in vec4 overlayColor;
#endif

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0);
#ifdef DISCARD
    if (color.a < DISCARD) discard;
#endif
    color *= vertexColor * ColorModulator;
#ifdef OVERLAY
    color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
#endif
    color *= lightColor;
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}