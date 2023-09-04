# Custom core shader template

some of the vanilla core shaders are unintuitively named and needlessly repetitive, so i grouped many of the similar ones together and renamed them to more intuitively describe what they do

not all shaders are included, for example ones unobserved ingame such as `new_entity` or ones too niche to be useful, like `water_mask`

if there are any visual differences from vanilla lemme know

### Changes from vanilla

- grouped all block / entity renderers in `core/shared`, tagged with `#define` s, and consolidated block and entity shader in `include/render`
- renamed many other unique renderers appropriately in `core/render`
- changed all cases of `texelFetch(Sampler2, UV2 / 16., 0)` to `minecraft_sample_lightmap(Sampler2, UV2)`, this makes all lighting use the same function so changing lighting will be consistent.

for a comprehensive list of what each rendertype affects, see [the community maintained shader wiki](https://github.com/McTsts/Minecraft-Shaders-Wiki/blob/main/Core%20Shader%20List.md)
