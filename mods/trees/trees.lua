local mod_name = minetest.get_current_modname()
local mod_path = minetest.get_modpath(mod_name)

-- shortens and makes the schematic declaration automatic
local function sch(name)
  return (mod_path .. DIR_DELIM .. "schematics" .. DIR_DELIM .. name .. ".mts")
end

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"cubed_core:grass_block"},
    sidelen = 80, -- no idea
    noise_params = {
        offset = 0.009, -- how much more dense the placement
        scale = 0.009, -- how much the density changes from one place to another
        spread = {x = 10, y = 10, z = 0}, -- how "big" the "pattern" of placement is
        seed = 69420, -- just pick some random number like this one (DON'T use math random)
        octaves = 3, -- how much roughness but it's more complex than that
        persistence = 0.2, -- how "smooth" the noise is, 0.01 for sharp, 0.99 for very smooth
        lacunarity = 2.0, -- no idea lol
    },
    biomes = {"grassland"},
    y_max = 1000, -- will not place above this
    y_min = 0, -- probably make this your sealevel
    schematic = sch("oak_tree"),
    flags = "place_center_x, place_center_z", -- add ", all_floors" or other tags depending on use case
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"cubed_core:dirt_with_dry_grass"},
    sidelen = 80, -- no idea
    noise_params = {
        offset = 0.009, -- how much more dense the placement
        scale = 0.009, -- how much the density changes from one place to another
        spread = {x = 10, y = 10, z = 10}, -- how "big" the "pattern" of placement is
        seed = 69420, -- just pick some random number like this one (DON'T use math random)
        octaves = 3, -- how much roughness but it's more complex than that
        persistence = 0.2, -- how "smooth" the noise is, 0.01 for sharp, 0.99 for very smooth
        lacunarity = 2.0, -- no idea lol
    },
    biomes = {"savanna"},
    y_max = 1000, -- will not place above this
    y_min = 0, -- probably make this your sealevel
    schematic = sch("acacia_tree"),
    flags = "place_center_x, place_center_z", -- add ", all_floors" or other tags depending on use case
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"cubed_core:grass_block"},
    sidelen = 80, -- no idea
    noise_params = {
        offset = 0.008, -- how much more dense the placement
        scale = 0.010, -- how much the density changes from one place to another
        spread = {x = 10, y = 10, z = 10}, -- how "big" the "pattern" of placement is
        seed = 69420, -- just pick some random number like this one (DON'T use math random)
        octaves = 5, -- how much roughness but it's more complex than that
        persistence = 0.2, -- how "smooth" the noise is, 0.01 for sharp, 0.99 for very smooth
        lacunarity = 2.0, -- no idea lol
    },
    biomes = {"grassland"},
    y_max = 1000, -- will not place above this
    y_min = 0, -- probably make this your sealevel
    schematic = sch("birch_tree"),
    flags = "place_center_x, place_center_z", -- add ", all_floors" or other tags depending on use case
    rotation = "random",
})

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"cubed_core:dirt_with_rainforest_litter"},
    sidelen = 40, -- no idea
    noise_params = {
        offset = 0.008, -- how much more dense the placement
        scale = 0.010, -- how much the density changes from one place to another
        spread = {x = 10, y = 10, z = 10}, -- how "big" the "pattern" of placement is
        seed = 69420, -- just pick some random number like this one (DON'T use math random)
        octaves = 5, -- how much roughness but it's more complex than that
        persistence = 0.2, -- how "smooth" the noise is, 0.01 for sharp, 0.99 for very smooth
        lacunarity = 2.0, -- no idea lol
    },
    biomes = {"jungle"},
    y_max = 1000, -- will not place above this
    y_min = 0, -- probably make this your sealevel
    schematic = sch("jungle_tree"),
    flags = "place_center_x, place_center_z", -- add ", all_floors" or other tags depending on use case
    rotation = "random",
})