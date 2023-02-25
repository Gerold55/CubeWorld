-- mods/cubed_core/crafting.lua

-- ===========
-- WOOD WORKING
-- ===========

minetest.register_craft({
	output = 'cubed_core:planks_oak',
	recipe = {{'cubed_core:log_oak'},}
})

minetest.register_craft({
	output = 'cubed_core:planks_oak',
	recipe = {{'cubed_core:log_oak_stripped'},}
})

minetest.register_craft({
	output = 'cubed_core:planks_balsa',
	recipe = {{'cubed_core:log_balsa'},}
})

minetest.register_craft({
	output = 'cubed_core:planks_balsa',
	recipe = {{'cubed_core:log_balsa_stripped'},}
})

minetest.register_craft({
	output = 'cubed_core:stick 4',
	recipe = {{'group:planks'},}
})

minetest.register_craft({
	output = 'cubed_core:ladder_wood',
	recipe = {
		{'cubed_core:stick', '', 'cubed_core:stick'},
		{'cubed_core:stick', 'cubed_core:stick', 'cubed_core:stick'},
		{'cubed_core:stick', '', 'cubed_core:stick'},
	}
})

-- =========
-- RESOURCES
-- =========

minetest.register_craft({
	output = 'cubed_core:clay',
	recipe = {
		{'cubed_core:clay_lump', 'cubed_core:clay_lump'},
		{'cubed_core:clay_lump', 'cubed_core:clay_lump'},
	}
})

minetest.register_craft({
	output = 'cubed_core:clay_lump 4',
	recipe = {{'cubed_core:clay'},}
})

minetest.register_craft({
	output = 'cubed_core:stonebrick 4',
	recipe = {
		{'cubed_core:stone', 'cubed_core:stone'},
		{'cubed_core:stone', 'cubed_core:stone'},
	}
})

minetest.register_craft({
	output = 'cubed_core:stone_block 9',
	recipe = {
		{'cubed_core:stone', 'cubed_core:stone', 'cubed_core:stone'},
		{'cubed_core:stone', 'cubed_core:stone', 'cubed_core:stone'},
		{'cubed_core:stone', 'cubed_core:stone', 'cubed_core:stone'},
	}
})

minetest.register_craft({
	output = 'cubed_core:path_stone 3',
	recipe = {
		{'cubed_core:cobble', 'cubed_core:gravel', 'cubed_core:cobble'},
	}
})

minetest.register_craft({
	output = 'cubed_core:flint 4',
	recipe = {
		{'cubed_core:gravel', 'cubed_core:gravel'},
		{'cubed_core:gravel', 'cubed_core:gravel'},
	}
})

-- =========
-- VALUABLES
-- =========

minetest.register_craft({
	output = 'cubed_core:gold_ingot',
	recipe = {
		{'cubed_core:gold_nugget', 'cubed_core:gold_nugget', 'cubed_core:gold_nugget'},
		{'cubed_core:gold_nugget', 'cubed_core:gold_nugget', 'cubed_core:gold_nugget'},
		{'cubed_core:gold_nugget', 'cubed_core:gold_nugget', 'cubed_core:gold_nugget'},
	}
})

minetest.register_craft({
	output = 'cubed_core:coal 9',
	recipe = {
		{'cubed_core:coal_block'},
	}
})

minetest.register_craft({
	output = 'cubed_core:coal_block',
	recipe = {
		{'cubed_core:coal', 'cubed_core:coal', 'cubed_core:coal'},
		{'cubed_core:coal', 'cubed_core:coal', 'cubed_core:coal'},
		{'cubed_core:coal', 'cubed_core:coal', 'cubed_core:coal'},
	}
})

-- ====
-- MISC
-- ====

minetest.register_craft({
	output = 'cubed_core:barrel',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', '', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft({
	output = 'cubed_core:furnace_bottom',
	recipe = {
		{'group:stone', 'group:stone', 'group:stone'},
		{'group:stone', '', 'group:stone'},
		{'group:stone', 'group:stone', 'group:stone'},
	}
})

minetest.register_craft({
	output = 'cubed_core:furnace_top',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'cubed_core:coal', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

-- =====
-- TOOLS
-- =====

-- Knifes
minetest.register_craft({
	output = 'cubed_core:knife_bone',
	recipe = {
		{'', 'cubed_core:bone_shard'},
		{'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'cubed_core:knife_scrap',
	recipe = {
		{'', 'cubed_core:scrap'},
		{'group:stick', ''},
	}
})

-- Hatchets
minetest.register_craft({
	output = 'cubed_core:hatchet_bone',
	recipe = {
	{'cubed_core:bone_shard','cubed_core:bone_shard', ''},
	{'cubed_core:bone_shard', 'cubed_core:stick', ''},
	{'', 'cubed_core:stick', ''},
	}
})

minetest.register_craft({
	output = 'cubed_core:hatchet_bone',
	recipe = {
	{'','cubed_core:bone_shard', 'cubed_core:bone_shard'},
	{'', 'cubed_core:stick', 'cubed_core:bone_shard'},
	{'', 'cubed_core:stick', ''},
	}
})

minetest.register_craft({
	output = 'cubed_core:hatchet_scrap',
	recipe = {
	{'cubed_core:scrap','cubed_core:scrap', ''},
	{'cubed_core:scrap', 'cubed_core:stick', ''},
	{'', 'cubed_core:stick', ''},
	}
})

minetest.register_craft({
	output = 'cubed_core:hatchet_scrap',
	recipe = {
	{'','cubed_core:scrap', 'cubed_core:scrap'},
	{'', 'cubed_core:stick', 'cubed_core:scrap'},
	{'', 'cubed_core:stick', ''},
	}
})

-- Shovels
minetest.register_craft({
	output = 'cubed_core:shovel_scrap',
	recipe = {
	{'','cubed_core:scrap', ''},
	{'', 'cubed_core:stick', ''},
	{'', 'cubed_core:stick', ''},
	}
})

-- Picks
minetest.register_craft({
	output = 'cubed_core:pick_scrap',
	recipe = {
	{'cubed_core:scrap','cubed_core:scrap', 'cubed_core:scrap'},
	{'', 'cubed_core:stick', ''},
	{'', 'cubed_core:stick', ''},
	}
})

-- ===========
-- TOOL REPAIR
-- ===========

minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.02,
})

-- =======
-- COOKING
-- =======

minetest.register_craft({
	type = "cooking",
	output = "cubed_core:stone",
	recipe = "cubed_core:cobble",
	cooktime = 20,
})

minetest.register_craft({
	type = "cooking",
	output = "cubed_core:gold_nugget",
	recipe = "cubed_core:stone_with_gold",
	cooktime = 15,
})

-- ====
-- FUEL
-- ====

minetest.register_craft({
	type = "fuel",
	recipe = "group:tree",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cubed_core:dry_papyrus",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cubed_core:barrel",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cubed_core:coal",
	burntime = 40,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:stick",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cubed_core:bark",
	burntime = 5,
})
