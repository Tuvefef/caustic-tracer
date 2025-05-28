vec3 renderingTextureTRACER(vec2 pointCoord, highp float DeferredTime){
    float refractFunction = gridSize1/float(coeefParameter1);
    float evalSTRACT = mod(floor(DeferredTime * targetTime), float(coeefParameter1));
    vec2 cornerCOORD = pointCoord;
    cornerCOORD.y = cornerCOORD.y * refractFunction + refractFunction * evalSTRACT;
    vec3 cats = texture2D(u_texture_0, cornerCOORD).rgb;
    cats = mix(cats, vec3(inverseCoeef(cats.r), inverseCoeef(cats.g), inverseCoeef(cats.b)), invetColor);
    vec3 final1 = cats;
    return final1;
}