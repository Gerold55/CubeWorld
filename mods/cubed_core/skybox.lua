-- Skybox

local day_sky = "#006EFF"
local day_horizon = "#0090FF"
local dawn_sky = "#FF1500"
local dawn_horizon = "#FF7200"
local night_sky = "#21007F"
local night_horizon = "#21007F"
local sun_tint = "#FFA500"
local moon_tint = "#C9D6FF"

local cloud_color = "#FFFFFF"
local star_color = "#FFFFFF"

minetest.register_on_joinplayer(function(player)
	player:set_sky({
	type = "regular",
	clouds = true,
	sky_color = {
		day_sky = day_sky,
		day_horizon = day_horizon,
		dawn_sky = dawn_sky,
		night_sky = night_sky,
		night_horizon = night_horizon,
	}
})

player:set_clouds({
	color = cloud_color
})

player:set_stars({
	count = 3000,
	star_color = star_color,
	scale = 0.8
})
end)