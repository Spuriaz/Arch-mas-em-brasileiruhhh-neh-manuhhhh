#version 300 es
precision mediump float;

in vec2 v_texcoord;
uniform sampler2D tex;

layout(location = 0) out vec4 fragColor;

void main() {
    vec4 pix = texture(tex, v_texcoord);

    // --- AJUSTES ---
    float contrast   = 1.1;
    float saturation = 1.1;
    // ---------------

    // Contraste
    pix.rgb = (pix.rgb - 0.5) * contrast + 0.5;

    // Saturação
    float grayscale = dot(pix.rgb, vec3(0.2126, 0.7152, 0.0722));
    pix.rgb = mix(vec3(grayscale), pix.rgb, saturation);

    fragColor = pix;
}
