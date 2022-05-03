# Custom core shader template

some of the vanilla core shaders are unintuitively named and needlessly repetitive, so i grouped many of the similar ones together and renamed them to more intuitively describe what they do

not all shaders are included, for example ones unobserved ingame such as `new_entity` or ones too niche to be useful, like `water_mask`

shaders with `cutout` means discarding pixels with low alpha

if there are any visual differences from vanilla lemme know

### Changes from vanilla

- grouped all block / entity renderers and named them appropriately in `render/common`
- renamed many other unique renderers appropriately in `render/special`
- changed all cases of `texelFetch(Sampler2, UV2 / 16., 0)` to `minecraft_sample_lightmap(Sampler2, UV2)`, this makes all lighting use the same function so changing lighting will be consistent.
