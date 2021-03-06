local xmutil = require("xmutil")
data:extend(
{

--Burner Machine Tool (Crude)
xmutil.clone("assembling-machine", "assembling-machine-1",
	{},
	{
		name = "machine-tool-0",
		icon = "__xander-mod-v1__/graphics/item/production/production/machine-tool-0.png",
		minable = {mining_time = 0.5, result = "machine-tool-0"},
		max_health = 50,
		crafting_categories = {"basic-machine", "machine"},
		crafting_speed = 0.5,
		energy_source =
		{
			type = "burner",
			fuel_category = "chemical",
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions_per_minute = 2,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 5,
					position = {0.0, -0.8},
					starting_vertical_speed = 0.08,
					starting_frame_deviation = 60
				}
			}
		},
		energy_usage = "200kW",
		ingredient_count = 4,
		animation = {
			layers = {
				{
					filename = "__xander-v1-graphics__/graphics/entity/production/machine-tool-0/0.png",
					hr_version = { filename = "__xander-v1-graphics__/graphics/entity/production/machine-tool-0/hr-0.png" },
				},
			},
		},
		next_upgrade = "assembling-machine-1"
	}
),
--Basic Lathe Mill
xmutil.clone("assembling-machine", "assembling-machine-1",
	{},
	{
		name = "machine-tool-1",
		icon = "__base__/graphics/icons/assembling-machine-1.png",
		minable = {mining_time = 0.5, result = "machine-tool-1"},
		max_health = 100,
		fluid_boxes = xmutil.assembler_fluid_boxes("machine-tool-1"),
		crafting_categories = {"basic-machine", "machine"},
		crafting_speed = 1,
		energy_source = { emissions_per_minute = 1 },
		energy_usage = "100kW",
		ingredient_count = 4,
		animation = {
			layers = {
				{
					filename = "__xander-v1-graphics__/graphics/entity/production/machine-tool-1/1.png",
					hr_version = { filename = "__xander-v1-graphics__/graphics/entity/production/machine-tool-1/hr-1.png" },
				},
			},
		},
	}
),
--Universal Machine Tool
xmutil.clone("assembling-machine", "assembling-machine-2",
	{},
	{
		name = "machine-tool-2",
		icon = "__xander-mod-v1__/graphics/item/production/production/machine-tool-2.png",
		minable = {mining_time = 0.5, result = "machine-tool-2"},
		max_health = 200,
		fluid_boxes = xmutil.assembler_fluid_boxes("machine-tool-2"),
		crafting_categories = {"machine", "advanced-machine"},
		crafting_speed = 2,
		energy_source = { emissions_per_minute = 0.8 },
		energy_usage = "200kW",
		animation = {
			layers = {
				{
					filename = "__xander-v1-graphics__/graphics/entity/production/machine-tool-2/2.png",
					hr_version = { filename = "__xander-v1-graphics__/graphics/entity/production/machine-tool-2/hr-2.png" },
				},
			},
		},
	}
),
--CNC Machine Tool
xmutil.clone("assembling-machine", "assembling-machine-3",
	{},
	{
		name = "machine-tool-3",
		icon = "__xander-mod-v1__/graphics/item/production/production/machine-tool-3.png",
		minable = {mining_time = 0.5, result = "machine-tool-3"},
		max_health = 500,
		fluid_boxes = xmutil.assembler_fluid_boxes("machine-tool-3"),
		crafting_categories = {"machine", "advanced-machine"},
		crafting_speed = 4,
		energy_source = { emissions_per_minute = 0.8 },
		energy_usage = "400kW",
		ingredient_count = 8,
		animation = {
			layers = {
				{
					filename = "__xander-v1-graphics__/graphics/entity/production/machine-tool-3/3.png",
					hr_version = { filename = "__xander-v1-graphics__/graphics/entity/production/machine-tool-3/hr-3.png" },
				},
			},
		},
	}
),

--Burner Assembling Machine (tier 0)
xmutil.clone("assembling-machine", "assembling-machine-1",
	{},
	{
		name = "assembling-machine-0",
		icon = "__base__/graphics/icons/assembling-machine-1.png",
		minable = {mining_time = 0.5, result = "assembling-machine-0"},
		max_health = 100,
		crafting_categories = {"basic-crafting", "crafting"},
		crafting_speed = 0.5,
		energy_source =
		{
			type = "burner",
			fuel_category = "chemical",
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions_per_minute = 2,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 5,
					position = {0.0, -0.8},
					starting_vertical_speed = 0.08,
					starting_frame_deviation = 60
				}
			}
		},
		energy_usage = "100kW",
		ingredient_count = 4,
	}
),
--Base "assembling-machine-1" placeholder
--Base "assembling-machine-2" placeholder
--Base "assembling-machine-3" placeholder

--Assembling Machine 4
xmutil.clone("assembling-machine", "assembling-machine-3",
	{
		{
			"__base__/graphics/entity/assembling-machine-3/(h?r?-?)assembling-machine-3.png",
			"__xander-v1-graphics__/graphics/entity/production/assembling-machine-4/%14.png",
		},
	},
	{
		name = "assembling-machine-4",
		icon = "__xander-mod-v1__/graphics/item/production/production/assembling-machine-4.png",
		minable = {mining_time = 0.5, result = "assembling-machine-4"},
		max_health = 500,
		fluid_boxes = xmutil.assembler_fluid_boxes("assembling-machine-4"),
		crafting_categories = {"crafting", "crafting-with-fluid", "advanced-crafting"},
		crafting_speed = 4,
		energy_source = { emissions_per_minute = 0.8 },
		energy_usage = "400kW",
		ingredient_count = 8,
	}
),

--Burner Lab
{
	type = "lab",
	name = "lab-1",
	icon = "__xander-mod-v1__/graphics/item/production/production/lab-1.png",
	icon_size = 32,
	flags = {"placeable-player", "player-creation"},
	minable = {mining_time = 1, result = "lab-1"},
	max_health = 100,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
	on_animation =
	{
		filename = "__xander-v1-graphics__/graphics/entity/production/lab-1/lab-1.png",
		width = 98,
		height = 87,
		frame_count = 33,
		line_length = 11,
		animation_speed = 1 / 3,
		shift = {0, 0.046875},
		hr_version = {
						filename = "__xander-v1-graphics__/graphics/entity/production/lab-1/hr-lab-1.png",
						width = 194,
						height = 174,
						frame_count = 33,
						scale = 0.5,
						line_length = 11,
						animation_speed = 1 / 3,
						shift = {0, 0.046875},
					},
	},
	off_animation =
	{
		filename = "__xander-v1-graphics__/graphics/entity/production/lab-1/lab-1.png",
		width = 98,
		height = 87,
		frame_count = 1,
		shift = {0, 0.046875},
		hr_version = {
						filename = "__xander-v1-graphics__/graphics/entity/production/lab-1/hr-lab-1.png",
						width = 194,
						height = 174,
						frame_count = 1,
						scale = 0.5,
						shift = {0, 0.046875},
					},
	},
	working_sound =
	{
		sound = {filename = "__base__/sound/lab.ogg", volume = 0.7},
		apparent_volume = 1
	},
	vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
	energy_source =
	{
		type = "burner",
		fuel_category = "crude",
		effectivity = 1,
		fuel_inventory_size = 1,
		emissions_per_minute = 1,
		smoke =
		{
			{
				name = "smoke",
				deviation = {0.1, 0.1},
				frequency = 5,
				position = {0.0, -0.8},
				starting_vertical_speed = 0.08,
				starting_frame_deviation = 60
			}
		}
	},
	energy_usage = "100kW",
	researching_speed = 0.5,
	inputs =
	{
		"basic-science-pack",
		"automation-science-pack",
		"logistic-science-pack"
	},
	next_upgrade = "lab",
	fast_replaceable_group = "lab"
}
--Base "lab" placeholder
--Base "beacon" placeholder
--Base "rocket-silo" placeholder

}
)

--Base Overrides

--XM "assembling-machine-0"
data.raw["assembling-machine"]["assembling-machine-0"].next_upgrade = "assembling-machine-1"

--Base "assembling-machine-1"
data.raw["assembling-machine"]["assembling-machine-1"].icon = "__xander-mod-v1__/graphics/item/production/production/assembling-machine-1.png"
data.raw["assembling-machine"]["assembling-machine-1"].max_health = 100
data.raw["assembling-machine"]["assembling-machine-1"].animation = xmutil.merge{
	data.raw["assembling-machine"]["assembling-machine-1"].animation,
	{
		layers = {
			{
				filename = "__xander-v1-graphics__/graphics/entity/production/assembling-machine-1/1.png",
				hr_version = { filename = "__xander-v1-graphics__/graphics/entity/production/assembling-machine-1/hr-1.png" },
			},
		}
	}
}
--data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories = {"basic-crafting", "crafting"}
data.raw["assembling-machine"]["assembling-machine-1"].energy_source.emissions_per_minute = 0.5
data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "50kW"
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 4
data.raw["assembling-machine"]["assembling-machine-1"].fluid_boxes = xmutil.assembler_fluid_boxes("assembling-machine-1")
data.raw["assembling-machine"]["assembling-machine-1"].minable.mining_time = 0.5

--Base "assembling-machine-2"
data.raw["assembling-machine"]["assembling-machine-2"].icon = "__xander-mod-v1__/graphics/item/production/production/assembling-machine-2.png"
data.raw["assembling-machine"]["assembling-machine-2"].max_health = 200
data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes = xmutil.assembler_fluid_boxes("assembling-machine-2")
data.raw["assembling-machine"]["assembling-machine-2"].animation = xmutil.merge{
	data.raw["assembling-machine"]["assembling-machine-2"].animation,
	{
		layers = {
			{
				filename = "__xander-v1-graphics__/graphics/entity/production/assembling-machine-2/2.png",
				hr_version = { filename = "__xander-v1-graphics__/graphics/entity/production/assembling-machine-2/hr-2.png" },
			},
		},
	}
}
--data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories = {"crafting", "crafting-with-fluid"}
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 1
data.raw["assembling-machine"]["assembling-machine-2"].energy_source.emissions_per_minute = 0.8
data.raw["assembling-machine"]["assembling-machine-2"].energy_usage = "100kW"
data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 6
data.raw["assembling-machine"]["assembling-machine-2"].minable.mining_time = 0.5

--Base "assembling-machine-3"
data.raw["assembling-machine"]["assembling-machine-3"].icon = "__xander-mod-v1__/graphics/item/production/production/assembling-machine-3.png"
data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes = xmutil.assembler_fluid_boxes("assembling-machine-3")
data.raw["assembling-machine"]["assembling-machine-3"].animation = xmutil.merge{
	data.raw["assembling-machine"]["assembling-machine-3"].animation,
	{
		layers = {
			{
				filename = "__xander-v1-graphics__/graphics/entity/production/assembling-machine-3/3.png",
				hr_version = { filename = "__xander-v1-graphics__/graphics/entity/production/assembling-machine-3/hr-3.png" },
			},
		},
	}
}
data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 2
data.raw["assembling-machine"]["assembling-machine-3"].energy_source.emissions_per_minute = 0.8
data.raw["assembling-machine"]["assembling-machine-3"].energy_usage = "200kW"
data.raw["assembling-machine"]["assembling-machine-3"].module_specification.module_slots = 3
data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade = "assembling-machine-4"
data.raw["assembling-machine"]["assembling-machine-3"].minable.mining_time = 0.5

--Base "lab"
data.raw.lab["lab"].max_health = 200
data.raw.lab["lab"].light = {intensity = 1, size = 10, color = {r = 1.0, g = 1.0, b = 1.0}}
data.raw.lab["lab"].energy_usage = "50kW"
data.raw.lab["lab"].fast_replaceable_group = "lab"
data.raw.lab["lab"].minable.mining_time = 1

--Base "beacon"
data.raw.beacon["beacon"].energy_usage = "500kW"
data.raw.beacon["beacon"].minable.mining_time = 1

--Base "rocket-silo"
data.raw["rocket-silo"]["rocket-silo"].ingredient_count = 5
data.raw["rocket-silo"]["rocket-silo"].energy_usage = "2MW"
data.raw["rocket-silo"]["rocket-silo"].idle_energy_usage = "30kW"
data.raw["rocket-silo"]["rocket-silo"].lamp_energy_usage = "20kW"
data.raw["rocket-silo"]["rocket-silo"].active_energy_usage = "4MW"
