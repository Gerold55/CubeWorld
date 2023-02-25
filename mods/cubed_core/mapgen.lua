local modname = "cubed_core"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	-- Terrain
	minetest.register_alias("mapgen_stone", "cubed_core:stone")
	minetest.register_alias("mapgen_water_source", "cubed_core:water_source")
	minetest.register_alias("mapgen_lava_source", "cubed_core:lava_source")
	minetest.register_alias("mapgen_dirt", "cubed_core:dirt")
	minetest.register_alias("mapgen_dirt_with_grass", "cubed_core:grass_block")
	--minetest.register_alias("mapgen_sand", "cubed_core:clay_dirt")
	minetest.register_alias("mapgen_gravel", "cubed_core:gravel")
	minetest.register_alias("mapgen_desert_stone", "cubed_core:sandstone")
	minetest.register_alias("mapgen_desert_sand", "cubed_core:sand")
	minetest.register_alias("mapgen_dirt_with_snow", "cubed_core:snowy_dirt")
	minetest.register_alias("mapgen_snowblock", "cubed_core:snow")
	minetest.register_alias("mapgen_snow", "cubed_core:snow")
	minetest.register_alias("mapgen_ice", "cubed_core:ice")
	
	-- Flora
	minetest.register_alias("mapgen_tree", "cubed_core:oak_tree")
	minetest.register_alias("mapgen_leaves", "cubed_core:oak_leaves")
	minetest.register_alias("mapgen_birch_tree", "cubed_core:birch_tree")
	minetest.register_alias("mapgen_birch_leaves", "cubed_core:birch_leaves")
	minetest.register_alias("mapgen_jungletree", "cubed_core:jungle_tree")
	minetest.register_alias("mapgen_jungleleaves", "cubed_core:jungle_leaves")
	--minetest.register_alias("mapgen_pine_tree", "cubed_core:pine_tree")
	--minetest.register_alias("mapgen_pine_needles", "cubed_core:pine_needles")
	
	-- Dungeons
	minetest.register_alias("mapgen_cobble", "cubed_core:cobble")
	minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
	minetest.register_alias("mapgen_mossycobble", "cubed_core:mossycobble")
	minetest.register_alias("mapgen_stair_desert_stone", "stairs:stair_cobble")
else

	-- Essential
	minetest.register_alias("mapgen_stone", "cubed_core:stone")
	-- minetest.register_alias("mapgen_river_water_source", filler)
	-- Fallback
	minetest.register_alias("mapgen_lava_source", "cubed_core:lava_source")
	minetest.register_alias("mapgen_cobble", "cubed_core:cobble")
end
--
-- Register ores
--

-- Mgv6

function cubed_core.register_mgv6_ores()

minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:clay",
		wherein         = {"cubed_core:sand"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 2,
		y_min           = -15,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})
	
	-- Sand

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:sand",
		wherein         = {"cubed_core:stone"},
		clust_scarcity  = 64 * 64 * 64,
		clust_size      = 5,
		y_max           = 30,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Gravel

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:gravel",
		wherein         = {"cubed_core:stone", "cubed_core:dirt"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Scatter ores

	--dirt
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:dirt",
		wherein         = {"cubed_core:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = -2,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	--more dirt

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:dirt_coarse",
		wherein         = {"cubed_core:dirt"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 200,
		y_min           = -40,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:dirt_rocky",
		wherein         = {"cubed_core:dirt"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 200,
		y_min           = -40,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Coal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_coal",
		wherein        = "cubed_core:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_coal",
		wherein        = "cubed_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = 0,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_coal",
		wherein        = "cubed_core:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_coal",
		wherein        = "cubed_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = 0,
		y_min          = -31000,
	})

	-- Iron

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_iron",
		wherein        = "cubed_core:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_iron",
		wherein        = "cubed_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_iron",
		wherein        = "cubed_core:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_iron",
		wherein        = "cubed_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = -64,
		y_min          = -31000,
	})

	-- Copper

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_copper",
		wherein        = "cubed_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -16,
		y_min          = -63,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_copper",
		wherein        = "cubed_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_copper",
		wherein        = "cubed_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -16,
		y_min          = -63,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_copper",
		wherein        = "cubed_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	-- Gold

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_gold",
		wherein        = "cubed_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -64,
		y_min          = -255,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_gold",
		wherein        = "cubed_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_gold",
		wherein        = "cubed_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -64,
		y_min          = -255,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_gold",
		wherein        = "cubed_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
end


-- All mapgens except mgv6

function cubed_core.register_ores()

	-- Blob ore.
	-- These before scatter ores to avoid other ores in blobs.

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:clay",
		wherein         = {"cubed_core:dirt"},
		clust_scarcity  = 20 * 20 * 20,
		clust_size      = 5,
		y_max           = 200,
		y_min           = -40,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})
	
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:dirt_coarse",
		wherein         = {"cubed_core:dirt"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 200,
		y_min           = -40,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:dirt_rocky",
		wherein         = {"cubed_core:dirt"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 200,
		y_min           = -40,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})
	
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:basalt",
		wherein         = {"cubed_core:lava"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -40,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})
	
	-- Granite
	
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:granite",
		wherein         = {"cubed_core:stone"},
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})
	
	-- Diorite
	
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:diorite",
		wherein         = {"cubed_core:stone"},
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})
	
	-- Andesite
	
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:andesite",
		wherein         = {"cubed_core:stone"},
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})
	
	-- Slate
	
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:slate",
		wherein         = {"cubed_core:stone"},
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
		biomes = {"grassland, desert, volcaniczone, spruce_forest, forest"},
	})
	
	-- Limestone
	
	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:limestone",
		wherein         = {"cubed_core:stone"},
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
		biomes = {"grassland, desert, volcaniczone, spruce_forest, forest"},
	})

	-- Gravel

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:gravel",
		wherein         = {"cubed_core:stone"},
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -127,
	})

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "cubed_core:gravel",
		wherein         = {"cubed_core:dirt"},
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -127,
	})

	-- Scatter ores

	-- Oil

	minetest.register_ore({
		ore             = "cubed_core:oil_source",
		wherein         = {"cubed_core:stone"},
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 4,
		y_min          = -31000,
	})
	
	-- Lava

	minetest.register_ore({
		ore             = "cubed_core:lava_source",
		wherein         = {"cubed_core:stone"},
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 10,
		clust_size     = 3,
		y_max          = -10000,
		y_min          = -31000,
	})

	-- Bones

	minetest.register_ore({
		ore             = "cubed_core:bone",
		wherein         = {"cubed_core:stone"},
		clust_scarcity = 60 * 60 * 60,
		clust_num_ores = 2,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore             = "cubed_core:bone",
		wherein         = {"cubed_core:dirt"},
		clust_scarcity = 25 * 25 * 25,
		clust_num_ores = 2,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})

	-- Coal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_coal",
		wherein        = "cubed_core:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -127,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_coal",
		wherein        = "cubed_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 30,
		clust_size     = 5,
		y_max          = -128,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_coal_dense",
		wherein        = "cubed_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_coal_dense",
		wherein        = "cubed_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = 0,
		y_min          = -31000,
	})

	-- Copper

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_copper",
		wherein        = "cubed_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -127,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_copper",
		wherein        = "cubed_core:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_copper",
		wherein        = "cubed_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 4,
		clust_size     = 3,
		y_max          = -16,
		y_min          = -63,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_copper",
		wherein        = "cubed_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -64,
		y_min          = -31000,
	})

	-- Iron

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_iron",
		wherein        = "cubed_core:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -255,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_iron",
		wherein        = "cubed_core:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 29,
		clust_size     = 5,
		y_max          = -256,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_iron",
		wherein        = "cubed_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_iron",
		wherein        = "cubed_core:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = -64,
		y_min          = -31000,
	})

	-- Gold

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_gold",
		wherein        = "cubed_core:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -256,
		y_min          = -511,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_gold",
		wherein        = "cubed_core:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -512,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_gold",
		wherein        = "cubed_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -64,
		y_min          = -255,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cubed_core:stone_with_gold",
		wherein        = "cubed_core:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
end


--
-- Register biomes
--

-- All mapgens except mgv6

function cubed_core.register_biomes()

minetest.register_biome({
		name = "taiga",
		node_dust = "cubed_core:snow",
		node_top = "cubed_core:dirt_with_snow",
		depth_top = 1,
		node_filler = "cubed_core:dirt",
		depth_filler = 3,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		y_max = 31000,
		y_min = 4,
		heat_point = 25,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "taiga_ocean",
		node_dust = "cubed_core:snow",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:sand",
		depth_filler = 3,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		node_cave_liquid = "cubed_core:water_source",
		vertical_blend = 1,
		y_max = 3,
		y_min = -255,
		heat_point = 25,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "taiga_under",
		node_cave_liquid = {"cubed_core:water_source", "cubed_core:lava_source"},
		y_max = -256,
		y_min = -31000,
		heat_point = 25,
		humidity_point = 70,
	})

	-- Snowy grassland

	minetest.register_biome({
		name = "snowy_grassland",
		node_dust = "cubed_core:snow",
		node_top = "cubed_core:dirt_with_snow",
		depth_top = 1,
		node_filler = "cubed_core:dirt",
		depth_filler = 1,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		y_max = 31000,
		y_min = 4,
		heat_point = 20,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "snowy_grassland_ocean",
		node_dust = "cubed_core:snow",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:sand",
		depth_filler = 3,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		node_cave_liquid = "cubed_core:water_source",
		vertical_blend = 1,
		y_max = 3,
		y_min = -255,
		heat_point = 20,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "snowy_grassland_under",
		node_cave_liquid = {"cubed_core:water_source", "cubed_core:lava_source"},
		y_max = -256,
		y_min = -31000,
		heat_point = 20,
		humidity_point = 35,
	})

	-- Grassland

	minetest.register_biome({
		name = "grassland",
		node_top = "cubed_core:dirt_with_grass",
		depth_top = 1,
		node_filler = "cubed_core:dirt",
		depth_filler = 10,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		y_max = 4500,
		y_min = 0,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_dunes",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:sand",
		depth_filler = 2,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 5,
		y_min = 4,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_ocean",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:sand",
		depth_filler = 3,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		node_cave_liquid = "cubed_core:water_source",
		y_max = 3,
		y_min = -255,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_under",
		node_cave_liquid = {"cubed_core:water_source", "cubed_core:lava_source"},
		y_max = -256,
		y_min = -31000,
		heat_point = 50,
		humidity_point = 35,
	})

	-- Desert

	minetest.register_biome({
		name = "desert",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:sand",
		depth_filler = 5,
		node_stone = "cubed_core:sandstone",
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 3,
		y_max = 31000,
		y_min = 4,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_ocean",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:sand",
		depth_filler = 3,
		node_stone = "cubed_core:sandstone",
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		node_cave_liquid = "cubed_core:water_source",
		vertical_blend = 1,
		y_max = 3,
		y_min = -255,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_under",
		node_cave_liquid = {"cubed_core:water_source", "cubed_core:lava_source"},
		y_max = -256,
		y_min = -31000,
		heat_point = 92,
		humidity_point = 16,
	})

	    -- VolcanicZone

	minetest.register_biome({
		name = "volcaniczone",
		node_top = "cubed_core:basalt",
		depth_top = 3,
		node_filler = "cubed_core:dirt",
		depth_filler = 3,
		node_riverbed = "cubed_core:dirt",
		depth_riverbed = 4,
		y_max = 500,
		y_min = 1,
		heat_point = 90,
		humidity_point = 0,
	})
	
	
	-- Savanna

	minetest.register_biome({
		name = "savanna",
		node_top = "cubed_core:dry_dirt_with_dry_grass",
		depth_top = 1,
		node_filler = "cubed_core:dirt",
		depth_filler = 5,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 3,
		y_max = 31000,
		y_min = 1,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_shore",
		node_top = "cubed_core:dirt_with_dry_grass",
		depth_top = 1,
		node_filler = "cubed_core:dirt",
		depth_filler = 3,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		y_max = 0,
		y_min = -1,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_ocean",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:sand",
		depth_filler = 3,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		node_cave_liquid = "cubed_core:water_source",
		vertical_blend = 1,
		y_max = -2,
		y_min = -255,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_under",
		node_cave_liquid = {"cubed_core:water_source", "cubed_core:lava_source"},
		y_max = -256,
		y_min = -31000,
		heat_point = 89,
		humidity_point = 42,
	})	
	
	
	-- Plains

	minetest.register_biome({
		name = "plains",
		node_top = "cubed_core:grass_block",
		depth_top = 1,
		node_filler = "cubed_core:dirt",
		depth_filler = 5,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		y_max = 31000,
		y_min = 1,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "plains_shore",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:dirt",
		depth_filler = 5,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		y_max = 0,
		y_min = -1,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "plains_ocean",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:sand",
		depth_filler = 4,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		node_cave_liquid = "cubed_core:water_source",
		vertical_blend = 1,
		y_max = -2,
		y_min = -255,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "plains_under",
		node_cave_liquid = {"cubed_core:water_source", "cubed_core:lava_source"},
		y_max = -256,
		y_min = -31000,
		heat_point = 89,
		humidity_point = 42,
	})

	-- Jungle

	minetest.register_biome({
		name = "jungle",
		node_top = "cubed_core:dirt_with_rainforest_litter",
		depth_top = 1,
		node_filler = "cubed_core:dirt",
		depth_filler = 10,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		y_max = 31000,
		y_min = 1,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "jungle_swamp",
		node_top = "cubed_core:dirt_with_rainforest_litter",
		depth_top = 1,
		node_filler = "cubed_core:dirt",
		depth_filler = 10,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		y_min = -1,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "jungle_ocean",
		node_top = "cubed_core:sand",
		depth_top = 1,
		node_filler = "cubed_core:sand",
		depth_filler = 3,
		node_riverbed = "cubed_core:sand",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -2,
		y_min = -255,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "jungle_under",
		node_cave_liquid = {"cubed_core:water_source", "cubed_core:lava_source"},
		y_max = -256,
		y_min = -31000,
		heat_point = 86,
		humidity_point = 65,
	})
end

--
-- Register decorations
--

function cubed_core.register_decorations()

	-- Papyrus
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"cubed_core:dirt", "cubed_core:sand", "cubed_core:clay"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 200, y = 200, z = 200},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"desert"},
		y_max = 1,
		y_min = 1,
		spawn_by = "cubed_core:water_source",
		num_spawn_by = 1,
		decoration = "cubed_core:papyrus",
		height = 2,
		height_max = 4,
	})

	-- Dry shrub
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"cubed_core:sand"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "desert"},
		y_max = 31000,
		y_min = 0,
		decoration = "cubed_core:dry_shrub",
		param2 = 4,
	})

	-- Gorse
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"cubed_core:grass_block",
			"cubed_core:grass_block"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"plains"},
		y_max = 31000,
		y_min = 0,
		decoration = "cubed_core:gorse",
		param2 = 4,
	})
	
	-- Cattails
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"cubed_core:sand",
			"cubed_core:sand"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland_ocean, spruce_forest_ocean, desert_ocean"},
		y_max = 0,
		y_min = -1,
		place_offset_y = -1,
		flags = "force_placement",
		decoration = "cubed_core:sand_with_cattails",
		param2 = 4,
	})

	-- Stalactites
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"cubed_core:stone",
			"cubed_core:stone"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 2,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"grassland", "desert", "jungle", "plains"},
		y_max = 0,
		y_min = -31000,
		decoration = "cubed_core:stalactites",
		flags = "all_ceilings",
		param2 = 4,
	})
end


minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()

if mg_name == "v6" then
	cubed_core.register_mgv6_ores()
else
	cubed_core.register_biomes()
	cubed_core.register_ores()
end

cubed_core.register_decorations()

minetest.register_node("cubed_core:acacia_tree", {
	description = "Acacia Tree",
	tiles = {"default_acacia_tree_top.png", "default_acacia_tree_top.png",
		"default_acacia_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:acacia_wood", {
	description = "Acacia Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_acacia_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = cubed_core.node_sound_wood_defaults(),
})

minetest.register_node("cubed_core:acacia_leaves", {
	description = "Acacia Tree Leaves",
	drawtype = "allfaces_optional",
	tiles = {"default_acacia_leaves.png"},
	special_tiles = {"default_acacia_leaves_simple.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"cubed_core:acacia_sapling"}, rarity = 20},
			{items = {"cubed_core:acacia_leaves"}}
		}
	},
	sounds = cubed_core.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("cubed_core:acacia_sapling", {
	description = "Acacia Tree Sapling",
	drawtype = "plantlike",
	tiles = {"default_acacia_sapling.png"},
	inventory_image = "default_acacia_sapling.png",
	wield_image = "default_acacia_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = cubed_core.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = cubed_core.sapling_on_place(itemstack, placer, pointed_thing,
			"cubed_core:acacia_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 7, z = 4},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

-- Oak Tree

minetest.register_node("cubed_core:oak_tree", {
	description = "Oak Tree",
	tiles = {"ws_log_oak_top.png", "ws_log_oak_top.png",
		"ws_log_oak.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:oak_wood", {
	description = "Oak Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_oak_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = cubed_core.node_sound_wood_defaults(),
})

minetest.register_node("cubed_core:oak_leaves", {
	description = "Oak Leaves",
	drawtype = "allfaces_optional",
	tiles = {"default_oak_leaves.png"},
	special_tiles = {"default_oak_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"cubed_core:oak_sapling"}, rarity = 20},
			{items = {"cubed_core:oak_leaves"}}
		}
	},
	sounds = cubed_core.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("cubed_core:oak_sapling", {
	description = "Oak Sapling",
	drawtype = "plantlike",
	tiles = {"default_oak_sapling.png"},
	inventory_image = "default_oak_sapling.png",
	wield_image = "default_oak_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = cubed_core.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = cubed_core.sapling_on_place(itemstack, placer, pointed_thing,
			"cubed_core:oak_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 7, z = 4},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

-- Birch Tree

minetest.register_node("cubed_core:birch_tree", {
	description = "Birch Tree",
	tiles = {"mcl_core_log_birch_top.png", "mcl_core_log_birch_top.png",
		"ws_log_aspen.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:birch_wood", {
	description = "Birch Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"mcl_core_planks_birch.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = cubed_core.node_sound_wood_defaults(),
})

minetest.register_node("cubed_core:birch_leaves", {
	description = "Birch Leaves",
	drawtype = "allfaces_optional",
	tiles = {"mcl_core_leaves_birch.png"},
	special_tiles = {"mcl_core_leaves_birch.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"cubed_core:birch_sapling"}, rarity = 20},
			{items = {"cubed_core:birch_leaves"}}
		}
	},
	sounds = cubed_core.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("cubed_core:birch_sapling", {
	description = "Birch Sapling",
	drawtype = "plantlike",
	tiles = {"default_oak_sapling.png"},
	inventory_image = "default_oak_sapling.png",
	wield_image = "default_oak_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = cubed_core.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = cubed_core.sapling_on_place(itemstack, placer, pointed_thing,
			"cubed_core:birch_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 7, z = 4},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

-- Jungle Tree

minetest.register_node("cubed_core:jungle_tree", {
	description = "Jungle Tree",
	tiles = {"default_jungletree_top.png", "default_jungletree_top.png",
		"default_jungletree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:jungle_wood", {
	description = "Jungle Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_junglewood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = cubed_core.node_sound_wood_defaults(),
})

minetest.register_node("cubed_core:jungle_leaves", {
	description = "Jungle Tree Leaves",
	drawtype = "allfaces_optional",
	tiles = {"default_jungleleaves.png"},
	special_tiles = {"default_jungleleaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"cubed_core:jungle_sapling"}, rarity = 20},
			{items = {"cubed_core:jungle_leaves"}}
		}
	},
	sounds = cubed_core.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("cubed_core:jungle_sapling", {
	description = "Jungle Tree Sapling",
	drawtype = "plantlike",
	tiles = {"default_acacia_sapling.png"},
	inventory_image = "default_acacia_sapling.png",
	wield_image = "default_acacia_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = cubed_core.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = cubed_core.sapling_on_place(itemstack, placer, pointed_thing,
			"cubed_core:jungle_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 7, z = 4},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})