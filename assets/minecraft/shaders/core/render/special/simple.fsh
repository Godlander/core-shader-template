#version 150

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;

in vec4 vertexColor;
in vec4 lightColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    fragColor = texture(Sampler0, texCoord0) * vertexColor * lightColor * ColorModulator;
}