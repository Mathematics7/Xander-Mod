local xmutil = require("xmutil")

--Slow Belt Animation Stuff
slow_belt_animation_set = {
	animation_set =
	{
	  filename = "__xander-v1-graphics__/graphics/entity/logistic/slow-transport-belt/belt.png",
	  priority = "extra-high",
	  width = 64,
	  height = 64,
	  frame_count = 16,
	  direction_count = 20,
	  hr_version =
	  {
	    filename = "__xander-v1-graphics__/graphics/entity/logistic/slow-transport-belt/hr-belt.png",
	    priority = "extra-high",
	    width = 128,
	    height = 128,
	    scale = 0.5,
	    frame_count = 16,
	    direction_count = 20
	  }
	},

	east_index = 1,
	west_index = 2,
	north_index = 3,
	south_index = 4,

	east_to_north_index = 5,
	north_to_east_index = 6,

	west_to_north_index = 7,
	north_to_west_index = 8,

	south_to_east_index = 9,
	east_to_south_index = 10,

	south_to_west_index = 11,
	west_to_south_index = 12,

	starting_south_index = 13,
	ending_south_index = 14,

	starting_west_index = 15,
	ending_west_index = 16,

	starting_north_index = 17,
	ending_north_index = 18,

	starting_east_index = 19,
	ending_east_index = 20,
}

--Expedited Belt Animation Stuff
expedited_belt_animation_set = {
	animation_set =
	{
	  filename = "__xander-v1-graphics__/graphics/entity/logistic/expedited-transport-belt/belt.png",
	  priority = "extra-high",
	  width = 64,
	  height = 64,
	  frame_count = 16,
	  direction_count = 20,
	  hr_version =
	  {
	    filename = "__xander-v1-graphics__/graphics/entity/logistic/expedited-transport-belt/hr-belt.png",
	    priority = "extra-high",
	    width = 128,
	    height = 128,
	    scale = 0.5,
	    frame_count = 16,
	    direction_count = 20
	  }
	},

	east_index = 1,
	west_index = 2,
	north_index = 3,
	south_index = 4,

	east_to_north_index = 5,
	north_to_east_index = 6,

	west_to_north_index = 7,
	north_to_west_index = 8,

	south_to_east_index = 9,
	east_to_south_index = 10,

	south_to_west_index = 11,
	west_to_south_index = 12,

	starting_south_index = 13,
	ending_south_index = 14,

	starting_west_index = 15,
	ending_west_index = 16,

	starting_north_index = 17,
	ending_north_index = 18,

	starting_east_index = 19,
	ending_east_index = 20,
}

--Base Overrides

--Base "transport-belt"
data.raw["transport-belt"]["transport-belt"].max_health = 120
data.raw["transport-belt"]["transport-belt"].next_upgrade = "fast-transport-belt"
data.raw["transport-belt"]["transport-belt"].minable.mining_time = 0.3

--Base "fast-transport-belt"
data.raw["transport-belt"]["fast-transport-belt"].max_health = 140
data.raw["transport-belt"]["fast-transport-belt"].next_upgrade = "expedited-transport-belt"
data.raw["transport-belt"]["fast-transport-belt"].minable.mining_time = 0.3

--Base "express-transport-belt"
data.raw["transport-belt"]["express-transport-belt"].max_health = 180
data.raw["transport-belt"]["express-transport-belt"].speed = 0.15625
data.raw["transport-belt"]["express-transport-belt"].minable.mining_time = 0.3

--Base "underground-belt"
data.raw["underground-belt"]["underground-belt"].max_health = 120
data.raw["underground-belt"]["underground-belt"].next_upgrade = "fast-underground-belt"
data.raw["underground-belt"]["underground-belt"].minable.mining_time = 0.5

--Base "fast-underground-belt"
data.raw["underground-belt"]["fast-underground-belt"].max_health = 140
data.raw["underground-belt"]["fast-underground-belt"].next_upgrade = "expedited-underground-belt"
data.raw["underground-belt"]["fast-underground-belt"].minable.mining_time = 0.5

--Base "express-underground-belt"
data.raw["underground-belt"]["express-underground-belt"].max_health = 180
data.raw["underground-belt"]["express-underground-belt"].speed = 0.15625
data.raw["underground-belt"]["express-underground-belt"].minable.mining_time = 0.5

--Base "splitter"
data.raw.splitter["splitter"].max_health = 240
data.raw.splitter["splitter"].next_upgrade = "fast-splitter"
data.raw.splitter["splitter"].minable.mining_time = 0.5

--Base "fast-splitter"
data.raw.splitter["fast-splitter"].max_health = 280
data.raw.splitter["fast-splitter"].next_upgrade = "expedited-splitter"
data.raw.splitter["fast-splitter"].minable.mining_time = 0.5

--Base "express-splitter"
data.raw.splitter["express-splitter"].max_health = 360
data.raw.splitter["express-splitter"].speed = 0.15625
data.raw.splitter["express-splitter"].minable.mining_time = 0.5

--Base "loader"
data.raw.loader["loader"].max_health = 150
data.raw.loader["loader"].next_upgrade = "fast-loader"
data.raw.loader["loader"].minable.mining_time = 0.5

--Base "fast-loader"
data.raw.loader["fast-loader"].max_health = 200
data.raw.loader["fast-loader"].next_upgrade = "expedited-loader"
data.raw.loader["fast-loader"].minable.mining_time = 0.5

--Base "express-loader"
data.raw.loader["express-loader"].max_health = 300
data.raw.loader["express-loader"].speed = 0.15625
data.raw.loader["express-loader"].minable.mining_time = 0.5


data:extend{

--Slow Transport Belt
xmutil.clone("transport-belt", "transport-belt",
	{},
	{
		name = "slow-transport-belt",
		icon = "__xander-mod-v1__/graphics/item/logistic/belt/slow-transport-belt.png",
		minable = {mining_time = 0.3, result = "slow-transport-belt"},
		max_health = 100,
		animation_speed_coefficient = 32,
		belt_animation_set = slow_belt_animation_set,
		speed = 0.015625,
		next_upgrade = "transport-belt",
	}
),
--Base "transport-belt" placeholder
--Base "fast-transport-belt" placeholder
--Expedited Transport Belt
xmutil.clone("transport-belt", "fast-transport-belt",
	{},
	{
		name = "expedited-transport-belt",
		icon = "__xander-mod-v1__/graphics/item/logistic/belt/expedited-transport-belt.png",
		minable = {mining_time = 0.3, result = "expedited-transport-belt"},
		max_health = 160,
		animation_speed_coefficient = 32,
		belt_animation_set = expedited_belt_animation_set,
		speed = 0.09375,
		next_upgrade = "express-transport-belt",
	}
),
--Base "express-transport-belt" placeholder

--Slow Underground Belt
xmutil.clone("underground-belt", "underground-belt",
	{
		{
			"__base__/graphics/entity/underground-belt/(h?r?-?)underground-belt-",
			"__xander-v1-graphics__/graphics/entity/logistic/slow-underground-belt/%1",
		}
	},
	{
		name = "slow-underground-belt",
		icon = "__xander-mod-v1__/graphics/item/logistic/belt/slow-underground-belt.png",
		minable = {mining_time = 0.5, result = "slow-underground-belt"},
		belt_animation_set = slow_belt_animation_set,
		max_health = 100,
		max_distance = 3,
		speed = 0.015625,
		next_upgrade = "underground-belt",
	}
),
--Base "underground-belt" placeholder
--Base "fast-underground-belt" placeholder
--Expedited Underground Belt
xmutil.clone("underground-belt", "fast-underground-belt",
	{
		{
			"__base__/graphics/entity/fast-underground-belt/(h?r?-?)fast-underground-belt-",
			"__xander-v1-graphics__/graphics/entity/logistic/expedited-underground-belt/%1",
		}
	},
	{
		name = "expedited-underground-belt",
		icon = "__xander-mod-v1__/graphics/item/logistic/belt/expedited-underground-belt.png",
		minable = {mining_time = 0.5, result = "expedited-underground-belt"},
		belt_animation_set = expedited_belt_animation_set,
		max_health = 160,
		max_distance = 9,
		speed = 0.09375,
		next_upgrade = "express-underground-belt",
	}
),
--Base "express-underground-belt" placeholder

--Slow Splitter
xmutil.clone("splitter", "splitter",
	{
		{
			"__base__/graphics/entity/splitter/(h?r?-?)splitter-",
			"__xander-v1-graphics__/graphics/entity/logistic/slow-splitter/%1",
		}
	},
	{
		name = "slow-splitter",
		icon = "__xander-mod-v1__/graphics/item/logistic/belt/slow-splitter.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.5, result = "slow-splitter"},
		max_health = 200,
		belt_animation_set = slow_belt_animation_set,
		speed = 0.015625,
		next_upgrade = "splitter",
	}
),
--Base "splitter" placeholder
--Base "fast-splitter" placeholder
--Expedited Splitter
xmutil.clone("splitter", "fast-splitter",
	{
		{
			"__base__/graphics/entity/fast-splitter/(h?r?-?)fast-splitter-",
			"__xander-v1-graphics__/graphics/entity/logistic/expedited-splitter/%1",
		}
	},
	{
		name = "expedited-splitter",
		icon = "__xander-mod-v1__/graphics/item/logistic/belt/expedited-splitter.png",
		minable = {mining_time = 0.5, result = "expedited-splitter"},
		max_health = 320,
		belt_animation_set = expedited_belt_animation_set,
		speed = 0.09375,
		next_upgrade = "express-splitter",
	}
),
--Base "express-splitter" placeholder

--Base "loader" placeholder
--Base "fast-loader" placeholder
--Expedited Loader
xmutil.clone("loader", "fast-loader",
	{},
	{
		name = "expedited-loader",
		icon = "__xander-mod-v1__/graphics/item/logistic/belt/expedited-loader.png",
		minable = {mining_time = 0.5, result = "expedited-loader"},
		max_health = 250,
		filter_count = 5,
		animation_speed_coefficient = 32,
		belt_animation_set = expedited_belt_animation_set,
		speed = 0.09375,
		next_upgrade = "express-loader"
	}
),
--Base "express-loader" placeholder

}
