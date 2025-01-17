-- mods/cubed_core/craftitems.lua

minetest.register_craftitem("cubed_core:stick", {
	description = "Stick",
	inventory_image = "ws_stick.png",
	groups = {stick = 1, flammable = 2},
})


minetest.register_craftitem('cubed_core:flint', {
    description = 'Flint',
	inventory_image = 'ws_flint.png'
})

minetest.register_craftitem('cubed_core:bone_shard', {
    description = 'Bone Shard',
	inventory_image = 'ws_bone_shard.png'
})

minetest.register_craftitem("cubed_core:coal", {
	description = "".. minetest.colorize("#FFFFFF", "Coal\n")..minetest.colorize("#ababab", "Coal is found mainly in underground deposits and widely used as fuel."),
	inventory_image = "ws_coal.png",
	groups = {coal = 1, flammable = 1}
})

minetest.register_craftitem("cubed_core:iron_lump", {
	description = "Iron Lump",
	inventory_image = "ws_iron_lump.png",
})

minetest.register_craftitem("cubed_core:clay_lump", {
	description = "Clay Lump",
	inventory_image = "ws_clay_lump.png",
})

minetest.register_craftitem("cubed_core:gold_nugget", {
	description = "Gold Nugget",
	inventory_image = "ws_gold_nugget.png",
})

minetest.register_craftitem("cubed_core:gold_ingot", {
	description = "Gold Ingot",
	inventory_image = "ws_gold_ingot.png",
})

minetest.register_craftitem("cubed_core:bark", {
	description = "Bark",
	inventory_image = "ws_bark.png",
	groups = {flammable = 2},
})

-- Book duplication craft

-- TODO: get books for which this is usefull or delete this
local lpp = 14 -- Lines per book's page
local function book_on_use(itemstack, user)
	local player_name = user:get_player_name()
	local meta = itemstack:get_meta()
	local title, text, owner = "", "", player_name
	local page, page_max, lines, string = 1, 1, {}, ""

	-- Backwards compatibility
	local old_data = minetest.deserialize(itemstack:get_metadata())
	if old_data then
		meta:from_table({ fields = old_data })
	end

	local data = meta:to_table().fields

	if data.owner then
		title = data.title
		text = data.text
		owner = data.owner

		for str in (text .. "\n"):gmatch("([^\n]*)[\n]") do
			lines[#lines+1] = str
		end

		if data.page then
			page = data.page
			page_max = data.page_max

			for i = ((lpp * page) - lpp) + 1, lpp * page do
				if not lines[i] then break end
				string = string .. lines[i] .. "\n"
			end
		end
	end

	local formspec
	if owner == player_name then
		formspec = "size[8,8]" .. cubed_core.gui_bg ..
			cubed_core.gui_bg_img ..
			"field[0.5,1;7.5,0;title;Title:;" ..
				minetest.formspec_escape(title) .. "]" ..
			"textarea[0.5,1.5;7.5,7;text;Contents:;" ..
				minetest.formspec_escape(text) .. "]" ..
			"button_exit[2.5,7.5;3,1;save;Save]"
	else
		formspec = "size[8,8]" .. cubed_core.gui_bg ..
			cubed_core.gui_bg_img ..
			"label[0.5,0.5;by " .. owner .. "]" ..
			"tablecolumns[color;text]" ..
			"tableoptions[background=#00000000;highlight=#00000000;border=false]" ..
			"table[0.4,0;7,0.5;title;#FFFF00," .. minetest.formspec_escape(title) .. "]" ..
			"textarea[0.5,1.5;7.5,7;;" ..
				minetest.formspec_escape(string ~= "" and string or text) .. ";]" ..
			"button[2.4,7.6;0.8,0.8;book_prev;<]" ..
			"label[3.2,7.7;Page " .. page .. " of " .. page_max .. "]" ..
			"button[4.9,7.6;0.8,0.8;book_next;>]"
	end

	minetest.show_formspec(player_name, "cubed_core:book", formspec)
	return itemstack
end

local max_text_size = 10000
local max_title_size = 80
local short_title_size = 35
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname ~= "cubed_core:book" then return end
	local inv = player:get_inventory()
	local stack = player:get_wielded_item()

	if fields.save and fields.title and fields.text
			and fields.title ~= "" and fields.text ~= "" then
		local new_stack, data
		if stack:get_name() ~= "cubed_core:book_written" then
			local count = stack:get_count()
			if count == 1 then
				stack:set_name("cubed_core:book_written")
			else
				stack:set_count(count - 1)
				new_stack = ItemStack("cubed_core:book_written")
			end
		else
			data = stack:get_meta():to_table().fields
		end

		if data and data.owner and data.owner ~= player:get_player_name() then
			return
		end

		if not data then data = {} end
		data.title = fields.title:sub(1, max_title_size)
		data.owner = player:get_player_name()
		local short_title = data.title
		-- Don't bother triming the title if the trailing dots would make it longer
		if #short_title > short_title_size + 3 then
			short_title = short_title:sub(1, short_title_size) .. "..."
		end
		data.description = "\""..short_title.."\" by "..data.owner
		data.text = fields.text:sub(1, max_text_size)
		data.text = data.text:gsub("\r\n", "\n"):gsub("\r", "\n")
		data.page = 1
		data.page_max = math.ceil((#data.text:gsub("[^\n]", "") + 1) / lpp)

		if new_stack then
			new_stack:get_meta():from_table({ fields = data })
			if inv:room_for_item("main", new_stack) then
				inv:add_item("main", new_stack)
			else
				minetest.add_item(player:getpos(), new_stack)
			end
		else
			stack:get_meta():from_table({ fields = data })
		end

	elseif fields.book_next or fields.book_prev then
		local data = stack:get_meta():to_table().fields
		if not data or not data.page then
			return
		end

		data.page = tonumber(data.page)
		data.page_max = tonumber(data.page_max)

		if fields.book_next then
			data.page = data.page + 1
			if data.page > data.page_max then
				data.page = 1
			end
		else
			data.page = data.page - 1
			if data.page == 0 then
				data.page = data.page_max
			end
		end

		stack:get_meta():from_table({fields = data})
		stack = book_on_use(stack, player)
	end

	-- Update stack
	player:set_wielded_item(stack)
end)

minetest.register_on_craft(function(itemstack, player, old_craft_grid, craft_inv)
	if itemstack:get_name() ~= "cubed_core:book_written" then
		return
	end

	local original
	local index
	for i = 1, player:get_inventory():get_size("craft") do
		if old_craft_grid[i]:get_name() == "cubed_core:book_written" then
			original = old_craft_grid[i]
			index = i
		end
	end
	if not original then
		return
	end
	local copymeta = original:get_meta():to_table()
	-- copy of the book held by player's mouse cursor
	itemstack:get_meta():from_table(copymeta)
	-- put the book with metadata back in the craft grid
	craft_inv:set_stack("craft", index, original)
end)
