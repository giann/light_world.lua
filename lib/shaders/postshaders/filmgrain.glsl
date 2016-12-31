extern number opacity = .3f;
extern number noise = .0f;
float rand(vec2 co)
{
    return fract(sin(mod(dot(co.xy,vec2(12.9898f,78.233f)), 3.14159f)) * 43758.5453f);
}
vec4 effect(vec4 color, Image texture, vec2 tc, vec2 _)
{
    return color * Texel(texture, tc) * mix(1.0, rand(tc+vec2(noise)), opacity);
}