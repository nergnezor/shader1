void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = (fragCoord - iResolution.xy * 0.5) / iResolution.y;

float radius = 0.2;

    // Change the radius and smoothness with the mouse
    radius *= iMouse.x / iResolution.x;
    radius += sin(iTime*4.)/100.;  

    float smoothlength = 0.01 + 0.01 * sin(iTime * 0.5);
    float d = length(uv);
    float c = smoothstep(radius, radius - smoothlength, d);
    fragColor = vec4(c,d,d,d);
}