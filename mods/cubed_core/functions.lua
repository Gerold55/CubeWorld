local barks_to_strip = {
	["cubed_core:log_oak"] = "cubed_core:log_oak_stripped",
	["cubed_core:log_balsa"] = "cubed_core:log_balsa_stripped",
}

-- if pointed_thing.under is a suitable block, replace it with a stripped variant
function strip_bark(itemstack, placer, pointed_thing)
	local node_under = minetest.get_node(pointed_thing.under)
	if  barks_to_strip[node_under.name] ~= nil then
		minetest.set_node(pointed_thing.under, {name = barks_to_strip[node_under.name], param2 = node_under.param2})
		placer:get_inventory():add_item("main", "cubed_core:bark")
		placer:get_inventory():add_item("main", "food:bug_" .. math.random(1, 2))
		itemstack:add_wear(500)
		return itemstack
	else
		return minetest.item_place(itemstack, placer, pointed_thing)
	end
end

--
-- Optimized helper to put all items in an inventory into a drops list
--

function cubed_core.get_inventory_drops(pos, inventory, drops)
	local inv = minetest.get_meta(pos):get_inventory()
	local n = #drops
	for i = 1, inv:get_size(inventory) do
		local stack = inv:get_stack(inventory, i)
		if stack:get_count() > 0 then
			drops[n+1] = stack:to_table()
			n = n + 1
		end
	end
end


--
-- Papyrus growing
--

-- Wrapping the functions in ABM action is necessary to make overriding them possible

local papyrus_grows_on = {
	["cubed_core:dirt"] = true,
	["cubed_core:sandy"] = true,
}

function cubed_core.grow_papyrus(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if not papyrus_grows_on[name] then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "cubed_core:papyrus" and height < 4 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
	if height == 4 or node.name ~= "air" then
		return
	end
	if minetest.get_node_light(pos) < 13 then
		return
	end
	minetest.set_node(pos, {name = "cubed_core:papyrus"})
	return true
end

--
-- Moss growth on cobble near water
--

local moss_correspondences = {
	["cubed_core:cobble"] = "cubed_core:mossycobble",
	["stairs:slab_cobble"] = "stairs:slab_mossycobble",
	["stairs:stair_cobble"] = "stairs:stair_mossycobble",
	["stairs:stair_inner_cobble"] = "stairs:stair_inner_mossycobble",
	["stairs:stair_outer_cobble"] = "stairs:stair_outer_mossycobble",
	["walls:cobble"] = "walls:mossycobble",
}
minetest.register_abm({
	label = "Moss growth",
	nodenames = {"cubed_core:cobble", "stairs:slab_cobble", "stairs:stair_cobble",
		"stairs:stair_inner_cobble", "stairs:stair_outer_cobble",
		"walls:cobble"},
	neighbors = {"group:water"},
	interval = 16,
	chance = 200,
	catch_up = false,
	action = function(pos, node)
		node.name = moss_correspondences[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})


--
-- Dig upwards
--

function cubed_core.dig_up(pos, node, digger)
	if digger == nil then return end
	local np = {x = pos.x, y = pos.y + 1, z = pos.z}
	local nn = minetest.get_node(np)
	if nn.name == node.name then
		minetest.node_dig(np, nn, digger)
	end
end

--
-- Wall registration
--

function cubed_core.register_wall(name, def)
	minetest.register_craft({
		output = name .. " 6",
		recipe = {
			{ def.material, def.material, def.material },
			{ def.material, def.material, def.material },
		}
	})

	-- Allow almost everything to be overridden
	local default_fields = {
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {},

		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = 		{-3/16, -1/2, -3/16, 3/16, 1/2, 3/16},
			connect_front = {-3/16, -1/2, -1/2, 3/16, 1/2, -3/16},
			connect_left = 	{-1/2, -1/2, -3/16, -3/16, 1/2, 3/16},
			connect_back = 	{-3/16, -1/2, 3/16, 3/16, 1/2, 1/2},
			connect_right = {3/16, -1/2, -3/16, 1/2, 1/2, 3/16},
			-- disconnected_sides = {-4/16, -1/2, -4/16, 4/16, 1/2, 4/16},
		},
		connects_to = {"group:wall", "group:cracky", "group:stone"},
	}
	for k, v in pairs(default_fields) do
		if def[k] == nil then
			def[k] = v
		end
	end

	-- Always add to the wall group, even if no group provided
	def.groups.wall = 1
	def.material = nil

	minetest.register_node(name, def)
end

--
-- Fence registration helper
--

function cubed_core.register_fence(name, def)
	minetest.register_craft({
		output = name .. " 4",
		recipe = {
			{ def.material, 'group:stick', def.material },
			{ def.material, 'group:stick', def.material },
		}
	})

	local fence_texture = def.texture ..
			"^ws_fence_overlay.png^[makealpha:255,126,126"
	-- Allow almost everything to be overridden
	local cubed_core_fields = {
		paramtype = "light",
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {{-1/8, -1/2, -1/8, 1/8, 1/2, 1/8}},
			-- connect_top =
			-- connect_bottom =
			connect_front = {{-1/16,3/16,-1/2,1/16,5/16,-1/8},
				{-1/16,-5/16,-1/2,1/16,-3/16,-1/8}},
			connect_left = {{-1/2,3/16,-1/16,-1/8,5/16,1/16},
				{-1/2,-5/16,-1/16,-1/8,-3/16,1/16}},
			connect_back = {{-1/16,3/16,1/8,1/16,5/16,1/2},
				{-1/16,-5/16,1/8,1/16,-3/16,1/2}},
			connect_right = {{1/8,3/16,-1/16,1/2,5/16,1/16},
				{1/8,-5/16,-1/16,1/2,-3/16,1/16}},
		},
		connects_to = {"group:fence", "group:wood", "group:tree"},
		inventory_image = fence_texture,
		wield_image = fence_texture,
		tiles = {def.texture},
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {},
	}
	for k, v in pairs(cubed_core_fields) do
		if def[k] == nil then
			def[k] = v
		end
	end

	-- Always add to the fence group, even if no group provided
	def.groups.fence = 1

	def.texture = nil
	def.material = nil

	minetest.register_node(name, def)
end



--
-- NOTICE: This method is not an official part of the API yet.
-- This method may change in future.
--

function cubed_core.can_interact_with_node(player, pos)
	if player then
		if minetest.check_player_privs(player, "protection_bypass") then
			return true
		end
	else
		return false
	end

	local meta = minetest.get_meta(pos)
	local owner = meta:get_string("owner")

	if not owner or owner == "" or owner == player:get_player_name() then
		return true
	end

	-- Is player wielding the right key?
	local item = player:get_wielded_item()
	-- TODO: currently no key item is defined
	if item:get_name() == "cubed_core:key" then
		local key_meta = item:get_meta()

		if key_meta:get_string("secret") == "" then
			local key_oldmeta = item:get_metadata()
			if key_oldmeta == "" or not minetest.parse_json(key_oldmeta) then
				return false
			end

			key_meta:set_string("secret", minetest.parse_json(key_oldmeta).secret)
			item:set_metadata("")
		end

		return meta:get_string("key_lock_secret") == key_meta:get_string("secret")
	end

	return false
end
