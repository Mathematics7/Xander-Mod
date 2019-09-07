local xmutil = require("xmutil")

--Base Overrides

--Base "chemical-plant"
data.raw["assembling-machine"]["chemical-plant"].max_health = 100
data.raw["assembling-machine"]["chemical-plant"].module_specification.module_slots = 0
data.raw["assembling-machine"]["chemical-plant"].crafting_speed = 0.5
data.raw["assembling-machine"]["chemical-plant"].energy_source =
{
	type = "burner",
	fuel_category = "crude",
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
}
data.raw["assembling-machine"]["chemical-plant"].energy_usage = "200kW"
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "reactor"
data.raw["assembling-machine"]["chemical-plant"].minable.mining_time = 0.5

--Base "centrifuge" 
data.raw["assembling-machine"]["centrifuge"].max_health = 500
data.raw["assembling-machine"]["centrifuge"].crafting_speed = 0.5
data.raw["assembling-machine"]["centrifuge"].energy_source.emissions_per_minute = 0.4
data.raw["assembling-machine"]["centrifuge"].energy_usage = "100kW"
data.raw["assembling-machine"]["centrifuge"].minable.mining_time = 0.5

--Base "oil-refinery"
data.raw["assembling-machine"]["oil-refinery"].max_health = 500
data.raw["assembling-machine"]["oil-refinery"].energy_source.emissions_per_minute = 1.6
data.raw["assembling-machine"]["oil-refinery"].energy_usage = "400kW"
data.raw["assembling-machine"]["oil-refinery"].minable.mining_time = 0.5

data:extend{

--Base "chemical-plant" placeholder
--Standard Chemical Reactor
xmutil.clone("assembling-machine", "chemical-plant",
	{
		{
			"__base__/graphics/entity/chemical-plant/chemical-plant.png",
			"__xander-v1-graphics__/graphics/entity/production/reactor-1/cm.png",
		},
		{
			"__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
			"__xander-v1-graphics__/graphics/entity/production/reactor-1/hr.png",
		},
	},
	{
		name = "reactor-1",
		icon = "__xander-mod-v1__/graphics/item/production/chemical/reactor-1.png",
		minable = {mining_time = 0.5, result = "reactor-1"},
		max_health = 200,
		module_specification = xmutil.NIL,
		crafting_speed = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 0.4
		},
		energy_usage = "200kW",
		fast_replaceable_group = "reactor",
		crafting_categories = {"basic-chemistry", "chemistry"},
		next_upgrade = "reactor-2"
	}
),
--Catalytic Reactor
xmutil.clone("assembling-machine", "chemical-plant",
	{
		{
			"__base__/graphics/entity/chemical-plant/chemical-plant.png",
			"__xander-v1-graphics__/graphics/entity/production/reactor-2/cm.png",
		},
		{
			"__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
			"__xander-v1-graphics__/graphics/entity/production/reactor-2/hr.png",
		},
	},
	{
		name = "reactor-2",
		icon = "__xander-mod-v1__/graphics/item/production/chemical/reactor-2.png",
		minable = {mining_time = 0.5, result = "reactor-2"},
		max_health = 400,
		module_specification = { module_slots = 2 },
		crafting_speed = 2,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 0.8
		},
		energy_usage = "400kW",
		ingredient_count = 6,
		fast_replaceable_group = "reactor",
		crafting_categories = {"basic-chemistry", "chemistry"},
	}
),
--Basic Electrolyzer
xmutil.clone("assembling-machine", "chemical-plant",
	{
		{
			"__base__/graphics/entity/chemical-plant/chemical-plant.png",
			"__xander-v1-graphics__/graphics/entity/production/electrolyzer-1/cm.png",
		},
		{
			"__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
			"__xander-v1-graphics__/graphics/entity/production/electrolyzer-1/hr.png",
		},
	},
	{
		name = "electrolyzer-1",
		icon = "__xander-mod-v1__/graphics/item/production/chemical/electrolyzer-1.png",
		minable = {mining_time = 0.5, result = "electrolyzer-1"},
		max_health = 200,
		module_specification = { module_slots = 2 },
		crafting_speed = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 1
		},
		energy_usage = "500kW",
		ingredient_count = 4,
		crafting_categories = {"electrolysis"},
		fast_replaceable_group = "electrolyzer",
		next_upgrade = "electrolyzer-2"
	}
),
--Advanced Electrolyzer
xmutil.clone("assembling-machine", "chemical-plant",
	{
		{
			"__base__/graphics/entity/chemical-plant/chemical-plant.png",
			"__xander-v1-graphics__/graphics/entity/production/electrolyzer-2/cm.png",
		},
		{
			"__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
			"__xander-v1-graphics__/graphics/entity/production/electrolyzer-2/hr.png",
		},
	},
	{
		type = "assembling-machine",
		name = "electrolyzer-2",
		icon = "__xander-mod-v1__/graphics/item/production/chemical/electrolyzer-2.png",
		minable = {mining_time = 0.5, result = "electrolyzer-2"},
		max_health = 400,
		module_specification = { module_slots = 3 },
		crafting_speed = 2,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 0.8
		},
		energy_usage = "1MW",
		ingredient_count = 6,
		crafting_categories = {"electrolysis"},
		fast_replaceable_group = "electrolyzer",
	}
),
--Base "centrifuge" placeholder
--Base "oil-refinery" placeholder
--XM Integrated Chemical Plant
xmutil.clone("assembling-machine", "oil-refinery",
	{
		{
			"__base__/graphics/entity/oil-refinery/oil-refinery.png",
			"__xander-v1-graphics__/graphics/entity/production/reactor-3/3.png",
		},
		{
			"__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
			"__xander-v1-graphics__/graphics/entity/production/reactor-3/hr-3.png",
		},
		{
			"__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
			"__xander-v1-graphics__/graphics/entity/production/reactor-3/steam.png",
		},
		{
			"__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
			"__xander-v1-graphics__/graphics/entity/production/reactor-3/hr-steam.png",
		},
	},
	{
		name = "reactor-3",
		icon = "__xander-mod-v1__/graphics/item/production/chemical/reactor-3.png",
		minable = {mining_time = 1, result = "reactor-3"},
		max_health = 1000,
		crafting_categories = {"chemistry", "oil-processing", "chemical-plant"},
		crafting_speed = 4,
		energy_source = { emissions_per_minute = 4 },
		energy_usage = "1MW",
		ingredient_count = 8,
		fluid_boxes = {
			[1] = { pipe_connections = { { position = {-2, 3} } } },
			[2] = { pipe_connections = { { position = { 2, 3} } } },
			[6] = {
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, 3} }}
			},
		},
	}
),
}

--Base "chemical-plant"
data.raw["assembling-machine"]["chemical-plant"].next_upgrade = "reactor-1"
