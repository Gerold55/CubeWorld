--[[

-Dirts

"cubed_core:dirt_dry"
"cubed_core:dirt_coarse"
"cubed_core:dirt_rocky"
"cubed_core:dirt_dry_forest"
"cubed_core:clay"
"cubed_core:clay_dirt"
"cubed_core:sandy_dirt"
"cubed_core:gravel"

-Stones

"cubed_core:stone"
"cubed_core:cobble"
"cubed_core:stone_block"
"cubed_core:stonebrick"
"cubed_core:basalt"
"cubed_core:basalt_cobble"
"cubed_core:slate"
"cubed_core:andesite"
"cubed_core:andesite_polished"
"cubed_core:granite"
"cubed_core:diorite"
"cubed_core:salt_block"
"cubed_core:limestone"
"cubed_core:lime_cobble"
"cubed_core:lime_brick"
"cubed_core:lime_polished"
"cubed_core:marble"
"cubed_core:marble_cobble"
"cubed_core:path_stone"
"cubed_core:stalactites"

-Ores

"cubed_core:stone_with_coal"
"cubed_core:stone_with_coal_dense"
"cubed_core:stone_with_gold"
"cubed_core:stone_with_gold_dense"
"cubed_core:stone_with_iron"
"cubed_core:stone_with_iron_dense"
"cubed_core:stone_with_copper"
"cubed_core:stone_with_copper_dense"

-Woods

"cubed_core:log_oak_dry"
"cubed_core:log_oak_stripped_dry"
"cubed_core:planks_oak_dry"

"cubed_core:log_oak"
"cubed_core:log_oak_stripped"
"cubed_core:planks_oak"

"cubed_core:log_balsa"
"cubed_core:log_balsa_stripped"
"cubed_core:planks_balsa"

"cubed_core:log_balsa_dry"
"cubed_core:planks_balsa_dry"
"cubed_core:log_balsa_stripped_dry"

"cubed_core:ladder_wood"
"cubed_core:planks_old"

-Plants

"cubed_core:gorse"
"cubed_core:dry_shrub"
"cubed_core:dry_papyrus"
"cubed_core:sand_with_cattails"
"cubed_core:cattail_top"

-Liquids

"cubed_core:water_source_toxic"
"cubed_core:water_flowing_toxic"
"cubed_core:water_source"
"cubed_core:water_flowing"
"cubed_core:oil_source"
"cubed_core:oil_flowing"
"cubed_core:lava_source"
"cubed_core:lava_flowing"

-- non-natural
"cubed_core:bookshelf"

-Misc

"cubed_core:bone"

--]]

-- =====
-- DIRTS
-- =====
minetest.register_node("cubed_core:grass_block", {
	description = "Grass Block",
	tiles = {"ws_grass_top.png",
		{name = "ws_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	sounds = cubed_core.node_sound_dirt_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'cubed_core:bone_shard'}, rarity = 13},
			{items = {'cubed_core:dirt'}}
		}
	}
})

minetest.register_node("cubed_core:dirt_with_rainforest_litter", {
	description = "Rainforest Litter",
	tiles = {
		"ws_forest_litter.png",
		"ws_dirt.png",
		{name = "ws_dirt.png^ws_forest_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "cubed_core:dirt",
	sounds = cubed_core.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("cubed_core:dirt", {
	description = "Dirt",
	tiles = {"ws_dirt.png",
		{name = "ws_dirt.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	sounds = cubed_core.node_sound_dirt_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'cubed_core:bone_shard'}, rarity = 13},
			{items = {'cubed_core:dirt'}}
		}
	}
})


minetest.register_node("cubed_core:dirt_with_dry_grass", {
	description = "Dry Grass Block",
	tiles = {"default_dry_grass.png",
		{name = "default_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	sounds = cubed_core.node_sound_dirt_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'cubed_core:dirt'}}
		}
	}
})

minetest.register_node("cubed_core:dirt_coarse", {
	description = "Coarse Dirt",
	tiles = {"ws_coarse_dry.png",
		{name = "ws_coarse_dry.png",
			tileable_vertical = false}},
	groups = {crumbly = 3},
	drop = "cubed_core:dirt_coarse",
})

minetest.register_node("cubed_core:dirt_rocky", {
	description = "Rocky Dirt",
	tiles = {"ws_rocky_dirt.png",
		{name = "ws_rocky_dirt.png",
			tileable_vertical = false}},
	groups = {crumbly = 3},
	drop = "cubed_core:dirt_rocky",
})

minetest.register_node("cubed_core:dirt_forest", {
	description = "Forest Dirt",
	tiles = {"ws_dirt_forest.png",
		{name = "ws_dirt_forest.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	sounds = cubed_core.node_sound_dirt_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'cubed_core:bone_shard'}, rarity = 13},
			{items = {'cubed_core:dirt'}}
		}
	}
})

minetest.register_node("cubed_core:clay", {
	description = "Clay",
	tiles = {"ws_clay.png",
		{name = "ws_clay.png",
			tileable_vertical = false}},
	groups = {crumbly = 3},
	drop = "cubed_core:clay_lump 4",
})

minetest.register_node("cubed_core:clay_blue", {
	description = "Blue Clay",
	tiles = {"ws_clay_blue.png",
		{name = "ws_clay_blue.png",
			tileable_vertical = false}},
	groups = {crumbly = 3},
	drop = "cubed_core:clay_lump 4",
})

minetest.register_node("cubed_core:clay_red", {
	description = "Red Clay",
	tiles = {"ws_clay_red.png",
		{name = "ws_clay_red.png",
			tileable_vertical = false}},
	groups = {crumbly = 3},
	drop = "cubed_core:clay_lump 4",
})

minetest.register_node("cubed_core:clay_dirt", {
	description = "Clay Dirt",
	tiles = {"ws_clay_dirt.png",
		{name = "ws_clay_dirt.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	sounds = cubed_core.node_sound_dirt_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'cubed_core:bone_shard'}, rarity = 13},
			{items = {'cubed_core:clay_lump'}, rarity = 13},
			{items = {'cubed_core:clay_dirt'}}
		}
	}
})

minetest.register_node("cubed_core:sand", {
	description = "Sand",
	tiles = {"default_sand.png",
		{name = "default_sand.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
})

minetest.register_node("cubed_core:gravel", {
	description = "Gravel",
	tiles = {"ws_gravel.png",
		{name = "ws_gravel.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, falling_node = 1},
	sounds = cubed_core.node_sound_dirt_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'cubed_core:flint'}, rarity = 15},
			{items = {'cubed_core:gravel'}}
		}
	}
})

-- ======
-- STONES
-- ======

minetest.register_node("cubed_core:stone", {
	description = "Stone",
	tiles = {"ws_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'cubed_core:cobble',
	legacy_mineral = true,
})

minetest.register_node("cubed_core:cobble", {
	description = "Cobblestone",
	tiles = {"ws_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
})

minetest.register_node("cubed_core:mossycobble", {
	description = ("Mossy Cobblestone"),
	tiles = {"ws_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
})

minetest.register_node("cubed_core:stone_block", {
	description = "Stone Block",
	tiles = {"ws_stone_block.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:stonebrick", {
	description = "Stone Brick",
	tiles = {"ws_stonebrick.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:stonebrick_cracked", {
	description = "Cracked Stone Brick",
	tiles = {"ws_stonebrick_cracked.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:basalt", {
	description = "Basalt",
	tiles = {"ws_basalt.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
	drop = 'cubed_core:basalt_cobble',
})

minetest.register_node("cubed_core:basalt_cobble", {
	description = "Basalt Cobble",
	tiles = {"ws_basalt_cobble.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:slate", {
	description = "Slate",
	tiles = {"ws_slate.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'cubed_core:slate_cobble',
	legacy_mineral = true,
})

minetest.register_node("cubed_core:slate_cobble", {
	description = "Slate Cobble",
	tiles = {"ws_slate_cobble.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:slate_polished", {
	description = "Slate Cobble",
	tiles = {"ws_slate_polished.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:slate_bricks", {
	description = "Slate Bricks",
	tiles = {"ws_slate_bricks.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:andesite", {
	description = "Andesite",
	tiles = {"ws_andesite.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:andesite_polished", {
	description = "Polished Andesite",
	tiles = {"ws_andesitepol.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:granite", {
	description = "Granite",
	tiles = {"ws_granite.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:diorite", {
	description = "Diorite",
	tiles = {"ws_diorite.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:salt_block", {
	description = "Salt",
	tiles = {"ws_salt_block.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:limestone", {
	description = "Limestone",
	tiles = {"ws_limestone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'cubed_core:limestone',
	legacy_mineral = true,
})

minetest.register_node("cubed_core:lime_cobble", {
	description = "Limestone Cobble",
	tiles = {"ws_lime_cobble.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'cubed_core:lime_cobble',
	legacy_mineral = true,
})

minetest.register_node("cubed_core:lime_brick", {
	description = "Limestone Bricks",
	tiles = {"ws_lime_smallbricks.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'cubed_core:lime_brick',
	legacy_mineral = true,
})

minetest.register_node("cubed_core:lime_brick_med", {
	description = "Limestone Bricks (Medium)",
	tiles = {"ws_lime_bricks_med.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'cubed_core:lime_brick_med',
	legacy_mineral = true,
})

minetest.register_node("cubed_core:lime_polished", {
	description = "Polished Limestone",
	tiles = {"ws_lime_polished.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'cubed_core:lime_polished',
	legacy_mineral = true,
})

minetest.register_node("cubed_core:marble", {
	description = "Marble",
	tiles = {"ws_marble.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
	drop = 'cubed_core:marble_cobble',
})

minetest.register_node("cubed_core:marble_cobble", {
	description = "Marble Cobble",
	tiles = {"ws_marble_cobble.png"},
	groups = {cracky = 3, stone = 1},
	legacy_mineral = true,
})

minetest.register_node("cubed_core:path_stone", {
	description = "Stone Path",
	tiles = {"ws_stone_path.png"},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky = 3, stone = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5}, -- NodeBox9
		}
	}
})


minetest.register_node("cubed_core:stalactites", {
	description = "Stalactite",
	drawtype = "plantlike",
	tiles = {"ws_stalag1.png"},
	inventory_image = "ws_stalag1.png",
	wield_image = "ws_stalag1.png",
	walkable = false,
	groups = {cracky = 3, stone = 1},
})


-- ====
-- ORES
-- ====

minetest.register_node("cubed_core:stone_with_coal", {
	description = "Coal Ore",
	tiles = {"ws_stone.png^ws_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'cubed_core:coal',
})

minetest.register_node("cubed_core:coal_block", {
	description = "Coal Block",
	tiles = {"ws_coal_block.png"},
	groups = {cracky = 3},
	drop = 'cubed_core:coal_block',
})

minetest.register_node("cubed_core:stone_with_gold", {
	description = "Gold Ore",
	tiles = {"ws_stone.png^ws_mineral_gold.png"},
	groups = {cracky = 3},
	drop = 'cubed_core:stone_with_gold',
})

minetest.register_node("cubed_core:stone_with_iron", {
	description = "Iron Ore",
	tiles = {"ws_stone.png^ws_mineral_iron.png"},
	groups = {cracky = 3},
	drop = 'cubed_core:iron_lump',
})

minetest.register_node("cubed_core:stone_with_copper", {
	description = "Copper Ore",
	tiles = {"ws_stone.png^ws_mineral_copper.png"},
	groups = {cracky = 3},
	drop = 'cubed_core:copper_lump',
})

-- =====
-- WOODS
-- =====

minetest.register_node("cubed_core:log_oak", {
	description = "Oak Log",
	tiles = {"ws_log_oak_top.png", "ws_log_oak_top.png", "ws_log_oak.png"},
	paramtype2 = "facedir",
	groups = {choppy = 2, tree = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:log_oak_stripped", {
	description = "Stripped Oak Log",
	tiles = {"ws_log_oak_stripped_top.png", "ws_log_oak_stripped_top.png", "ws_log_oak_stripped.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {choppy = 2, tree = 1, flammable = 2},
	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:planks_oak", {
	description = "Oak Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"cube_wood_oak.png"},
	is_ground_content = false,
	groups = {choppy = 3, planks = 1, wood = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),
})

minetest.register_node("cubed_core:log_acacia", {
	description = "Acacia Log",
	tiles = {"default_acacia_tree_top.png", "default_acacia_tree_top.png", "default_acacia_tree.png"},
	paramtype2 = "facedir",
	groups = {choppy = 2, tree = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:log_birch", {
	description = "Birch Log",
	tiles = {"mcl_core_log_birch_top.png", "mcl_core_log_birch_top.png", "ws_log_aspen.png"},
	paramtype2 = "facedir",
	groups = {choppy = 2, tree = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:log_balsa", {
	description = "Balsa Log",
	tiles = {"ws_log_balsa_top.png", "ws_log_balsa_top.png", "ws_log_balsa.png"},
	paramtype2 = "facedir",
	groups = {choppy = 2, tree = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:log_balsa_stripped", {
	description = "Stripped Balsa Log",
	tiles = {"ws_log_balsa_stripped_top.png", "ws_log_balsa_stripped_top.png", "ws_log_balsa_stripped.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	groups = {choppy = 2, tree = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("cubed_core:planks_balsa", {
	description = "Balsa Wood Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_planks_balsa.png"},
	is_ground_content = false,
	groups = {choppy = 3, planks = 1, wood = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),
})

minetest.register_node("cubed_core:ladder_wood", {
	description = "Ladder",
	drawtype = "signlike",
	tiles = {"ws_ladder.png"},
	inventory_image = "ws_ladder.png",
	wield_image = "ws_ladder.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
	legacy_wallmounted = true,
	sounds = cubed_core.node_sound_wood_defaults(),
})

-- ======
-- PLANTS
-- ======

minetest.register_node("cubed_core:gorse", {
	description = "Gorse",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"flowers_gorse.png"},
	inventory_image = "flowers_gorse.png",
	wield_image = "flowers_gorse.png",
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 4,
	drop = "cubed_core:stick",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

minetest.register_node("cubed_core:dry_shrub", {
	description = "Dry Shrub",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"ws_dry_shrub.png"},
	inventory_image = "ws_dry_shrub.png",
	wield_image = "ws_dry_shrub.png",
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 4,
	drop = "cubed_core:stick",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

minetest.register_node("cubed_core:papyrus", {
	description = "Papyrus",
	drawtype = "plantlike",
	tiles = {"ws_papyrus.png"},
	inventory_image = "ws_papyrus.png",
	wield_image = "ws_papyrus.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {snappy = 3, flammable = 2},
	sounds = cubed_core.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		cubed_core.dig_up(pos, node, digger)
	end,
})

-- Brain Skeleton (originally from XOcean)

minetest.register_node("cubed_core:brain_skeleton", {
	description = "Brain Coral Skeleton Block",
	tiles = {"xocean_coral_brain_skeleton.png"},
	groups = {cracky = 3},
	sounds = cubed_core.node_sound_stone_defaults(),
})

minetest.register_node("cubed_core:skeleton_brain", {
	description = "Brain Coral Skeleton",
	drawtype = "plantlike_rooted",
	waving = 1,
	paramtype = "light",
	tiles = {"xocean_coral_brain_skeleton.png"},
	special_tiles = {{name = "xocean_brain_skeleton.png", tileable_vertical = true}},
	inventory_image = "xocean_brain_skeleton.png",
	groups = {snappy = 3},
	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-4/16, 0.5, -4/16, 4/16, 1.5, 4/16},
		},
	},
	node_dig_prediction = "cubed_core:brain_skeleton",
	node_placement_prediction = "",
	sounds = cubed_core.node_sound_stone_defaults({
		dig = {name = "default_dig_snappy", gain = 0.2},
		dug = {name = "default_grass_footstep", gain = 0.25},
	}),

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" or not placer then
			return itemstack
		end

		local player_name = placer:get_player_name()
		local pos_under = pointed_thing.under
		local pos_above = pointed_thing.above

		if minetest.get_node(pos_under).name ~= "cubed_core:brain_skeleton" or
				minetest.get_node(pos_above).name ~= "cubed_core:water_source" then
			return itemstack
		end

		if minetest.is_protected(pos_under, player_name) or
				minetest.is_protected(pos_above, player_name) then
			minetest.chat_send_player(player_name, "Node is protected")
			minetest.record_protection_violation(pos_under, player_name)
			return itemstack
		end

		minetest.set_node(pos_under, {name = "cubed_core:skeleton_brain"})
		if not (creative and creative.is_enabled_for(player_name)) then
			itemstack:take_item()
		end

		return itemstack
	end,

	after_destruct  = function(pos, oldnode)
		minetest.set_node(pos, {name = "cubed_core:brain_skeleton"})
	end,
})

-- =======
-- LIQUIDS
-- =======

minetest.register_node("cubed_core:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "ws_water_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "ws_water_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "cubed_core:water_flowing",
	liquid_alternative_source = "cubed_core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 16, g = 106, b = 106},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	sounds = cubed_core.node_sound_water_defaults(),
})

minetest.register_node("cubed_core:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	tiles = {"ws_water_flowing_animated.png"},
	special_tiles = {
		{
			name = "ws_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "ws_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "cubed_core:water_flowing",
	liquid_alternative_source = "cubed_core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 16, g = 106, b = 106},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = cubed_core.node_sound_water_defaults(),
})

minetest.register_node("cubed_core:oil_source", {
	description = "Oil Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "ws_oil_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "ws_oil_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	alpha = 25,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_viscosity = 2,
	liquid_range = 2,
	liquid_renewable = false,
	liquid_alternative_flowing = "cubed_core:oil_flowing",
	liquid_alternative_source = "cubed_core:oil_source",
	post_effect_color = {a = 191, r = 1, g = 0, b = 3},
	groups = {liquid = 2},
})

minetest.register_node("cubed_core:oil_flowing", {
	description = "Flowing Oil",
	drawtype = "flowingliquid",
	tiles = {"ws_oil.png"},
	special_tiles = {
		{
			name = "ws_oil_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "ws_oil_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	alpha = 25,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_viscosity = 3,
	liquid_range = 2,
	liquid_renewable = false,
	liquid_alternative_flowing = "cubed_core:oil_flowing",
	liquid_alternative_source = "cubed_core:oil_source",
	post_effect_color = {a = 191, r = 1, g = 0, b = 3},
	groups = {liquid = 2,
		not_in_creative_inventory = 1},
})

minetest.register_node("cubed_core:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = {"ws_lava.png"},
	special_tiles = {
		{
			name = "ws_lava_source_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "ws_lava_source_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	paramtype = "light",
	light_source = cubed_core.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "cubed_core:lava_flowing",
	liquid_alternative_source = "cubed_core:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1},
})

minetest.register_node("cubed_core:lava_flowing", {
	description = "Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"ws_lava.png"},
	special_tiles = {
		{
			name = "ws_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 6,
			},
		},
		{
			name = "ws_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 6,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = cubed_core.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "cubed_core:lava_flowing",
	liquid_alternative_source = "cubed_core:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1,
		not_in_creative_inventory = 1},
})

-- ====
-- NON-NATURAL
-- ====

minetest.register_node("cubed_core:bookshelf", {
	description = "Bookshelf",
	paramtype2 = "facedir",
	tiles = {
		"ws_planks_oak.png",
		"ws_planks_oak.png",
		"ws_planks_oak.png",
		"ws_planks_oak.png",
		"ws_bookshelf.png",
		"ws_bookshelf.png"
	},
	groups = {choppy = 3, wood = 1, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),
})

minetest.register_node("cubed_core:carpet1", {
	description = "Diamond Carpet",
	tiles = {"ws_carpet_diamond.png"},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {snappy = 3, flammable = 3},
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
	},
	sounds = cubed_core.node_sound_leaves_defaults(),
})

minetest.register_node("cubed_core:glass", {
	description = "Glass",
	drawtype = "glasslike_framed_optional",
	tiles = {"ws_glass.png", "ws_glass_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = cubed_core.node_sound_glass_defaults(),
})

-- ====
-- MISC
-- ====

minetest.register_node("cubed_core:bone", {
	description = "Bone",
	tiles = {"ws_bone_top.png","ws_bone_top.png",
		{name = "ws_bone.png",
			tileable_vertical = false}},
	paramtype2 = "facedir",
	groups = {cracky = 3},
	on_place = minetest.rotate_node,
	sounds = cubed_core.node_sound_dirt_defaults(),
})

minetest.register_node("cubed_core:straw", {
	description = "Straw",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"ws_straw.png"},
	is_ground_content = false,
	groups = {choppy = 3, flammable = 2},
	sounds = cubed_core.node_sound_wood_defaults(),
})

-- ====
-- Housing Mats
-- ====

minetest.register_node("cubed_core:plaster", {
	description = "Plaster",
	tiles = {
		"ws_plaster.png"
	},
	groups = {cracky = 1},
	sounds = cubed_core.node_sound_stone_defaults(),
})

minetest.register_node("cubed_core:plaster_square", {
	description = "Square Framed Plaster",
	tiles = {
		"ws_plaster_frame_square.png"
	},
	paramtype2 = "facedir",
	groups = {cracky = 1},
	on_place = minetest.rotate_node,
	sounds = cubed_core.node_sound_stone_defaults(),
})

minetest.register_node("cubed_core:plaster_straight", {
	description = "Straight Framed Plaster",
	tiles = {
		"ws_plaster_frame_square.png",
		"ws_plaster_frame_square.png",
		"ws_plaster_frame_straight.png",
		"ws_plaster_frame_straight.png",
		"ws_plaster_frame_straight.png",
		"ws_plaster_frame_straight.png"
	},
	paramtype2 = "facedir",
	groups = {cracky = 1},
	on_place = minetest.rotate_node,
	sounds = cubed_core.node_sound_stone_defaults(),
})

minetest.register_node("cubed_core:plaster_cross", {
	description = "Diagonal Framed Plaster",
	tiles = {
		"ws_plaster_frame_square.png",
		"ws_plaster_frame_square.png",
		"ws_plaster_frame_cross.png",
		"ws_plaster_frame_cross.png",
		"ws_plaster_frame_cross.png",
		"ws_plaster_frame_cross.png"
	},
	paramtype2 = "facedir",
	groups = {cracky = 1},
	on_place = minetest.rotate_node,
	sounds = cubed_core.node_sound_stone_defaults(),
})