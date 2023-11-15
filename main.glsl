void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    fragColor = vec4(0.3);
    // // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;

    // Check distance from the center
    float d = distance(uv, vec2(0.5));

    // Draw white if the distance is less than 0.25
    if (d < 0.25) {
        fragColor = vec4(1.0);
    if (d < 0.24) {
        fragColor = vec4(0.0);
    }
    }

    // Draw a wireframe sphere
    

}