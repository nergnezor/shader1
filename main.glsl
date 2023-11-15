void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    fragColor = vec4(0.3);
    // // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = (fragCoord - iResolution.xy * 0.5) / iResolution.y;

    // Check distance from the center
    float d = length(uv);

    // Adjust distance to the screen ratio
    // d *= iResolution.x/iResolution.y;

float radius = 0.2;
    // Change the radius and smoothness with the mouse
    radius *= iMouse.x / iResolution.x;
    // float radius = 0.5 + 0.5 * sin(iTime);  
    float smoothlength = 0.01 + 0.01 * sin(iTime * 0.5);
    // Smoothstep circle
    float c = smoothstep(radius, radius - smoothlength, d);
    fragColor = vec4(c,0,0,1);
}