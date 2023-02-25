if not minetest.settings:get_bool("creative_mode") then
	minetest.register_item(":", {
		type = "none",
		wield_image = "wieldhand.png",
		wield_scale = {x=1,y=1,z=2.5},
		tool_capabilities = {
			full_punch_interval = 0.9,
			max_drop_level = 0,
			groupcaps = {
				crumbly = {times={[2]=3.00, [3]=1.50}, uses=0, maxlevel=1},
				snappy = {times={[3]=1.80}, uses=0, maxlevel=1},
				oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}
			},
			damage_groups = {fleshy=1},
		}
	})
end