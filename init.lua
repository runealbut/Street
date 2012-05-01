minetest.register_craft({
	output = 'street:lamp 4',
	recipe = {
		{'default:coal_lump'},
		{'default:torch'},
	}
})

minetest.register_node("street:lamp", {
	description = "Lamp",
	drawtype = "plantlike",
	tile_images = {"lamp.png"},
	inventory_image = "lamp.png",
	wield_image = "lamp.png",
	paramtype = "light",
	--paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = LIGHT_MAX-1,
	selection_box = {
		--type = "wallmounted",
		--wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		--wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		--wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	--material = minetest.digprop_constanttime(0.0),
	groups = {choppy=2,dig_immediate=3,flammable=1},
	sounds = default.node_sound_defaults(),
	legacy_wallmounted = true,
})

minetest.register_craft({
	output = 'street:lamppost 12',
	recipe = {
		{'default:coal_lump'},
		{'default:fence_wood'},
	}
})

minetest.register_node("street:lamppost", {
	description = "Lamppost",
	drawtype = "fencelike",
	tile_images = {"lamppost.png"},
	inventory_image = "lamppost.png",
	wield_image = "lamppost.png",
	paramtype = "light",
	is_ground_content = true,
	sunlight_propagates = true,
	walkable = false,
	light_source = LIGHT_MAX-1,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	--material = minetest.digprop_woodlike(0.75),
	groups = {choppy=2,dig_immediate=3,flammable=1},
	sounds = default.node_sound_defaults(),
})
