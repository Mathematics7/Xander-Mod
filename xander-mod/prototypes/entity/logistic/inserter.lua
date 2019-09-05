local xmutil = require("xmutil")

--Base Overrides

--Base "burner-inserter"
data.raw.inserter["burner-inserter"].max_health = 50
data.raw.inserter["burner-inserter"].energy_per_movement = "50KJ"
data.raw.inserter["burner-inserter"].energy_per_rotation = "50KJ"
data.raw.inserter["burner-inserter"].energy_source.fuel_category = "crude"
data.raw.inserter["burner-inserter"].next_upgrade = "inserter-slow"
data.raw.inserter["burner-inserter"].minable.mining_time = 0.5
--Base "inserter"
data.raw.inserter["inserter"].minable.mining_time = 0.5

--Base "long-handed-inserter"
data.raw.inserter["long-handed-inserter"].max_health = 150
data.raw.inserter["long-handed-inserter"].next_upgrade = "inserter-long-fast"
data.raw.inserter["long-handed-inserter"].minable.mining_time = 0.5

--Base "fast-inserter"
data.raw.inserter["fast-inserter"].minable.mining_time = 0.5

--Base "filter-inserter"
data.raw.inserter["filter-inserter"].next_upgrade = "stack-filter-inserter"
data.raw.inserter["filter-inserter"].minable.mining_time = 0.5

--Base "stack-inserter"
data.raw.inserter["stack-inserter"].max_health = 200
data.raw.inserter["stack-inserter"].minable.mining_time = 0.5

--Base "stack-filter-inserter"
data.raw.inserter["stack-filter-inserter"].max_health = 200
data.raw.inserter["stack-filter-inserter"].minable.mining_time = 0.5

data:extend(
{

--Base "burner-inserter" placeholder
--Chemical Fuel Burner Inserter
xmutil.clone("inserter", "burner-inserter",
	{
		{
			"__base__/graphics/entity/burner-inserter/(h?r?-?)burner-inserter-",
			"__xander-v1-graphics__/graphics/entity/logistic/inserter-chemical-burner/%1",
		},
	},
	{
		name = "inserter-chemical-burner",
		icon = "__xander-mod-v1__/graphics/item/logistic/inserter/inserter-chemical-burner.png",
		minable = {mining_time = 0.5, result = "inserter-chemical-burner"},
		energy_source = { fuel_category = "chemical" },
	}
),
--Slow Electric Inserter
xmutil.clone("inserter", "inserter",
	{
		{
			"__base__/graphics/entity/inserter/(h?r?-?)inserter-",
			"__xander-v1-graphics__/graphics/entity/logistic/inserter-slow/%1",
		},
	},
	{
		name = "inserter-slow",
		icon = "__xander-mod-v1__/graphics/item/logistic/inserter/inserter-slow.png",
		minable = {mining_time = 0.5, result = "inserter-slow"},
		max_health = 50,
		energy_per_movement = "20KJ",
		energy_per_rotation = "20KJ",
		energy_source = { drain = "1kW" },
		extension_speed = 0.0214,
		rotation_speed = 0.01,
	}
),
--Base "inserter" placeholder
--Base "long-handed-inserter" placeholder
--Base "fast-inserter" placeholder
--Long Fast Inserter
xmutil.clone("inserter", "fast-inserter",
	{
		{
			"__base__/graphics/entity/fast-inserter/(h?r?-?)fast-inserter-",
			"__xander-v1-graphics__/graphics/entity/logistic/inserter-long-fast/%1",
		},
	},
	{
		name = "inserter-long-fast",
		icon = "__xander-mod-v1__/graphics/item/logistic/inserter/inserter-long-fast.png",
		minable = {mining_time = 0.5, result = "inserter-long-fast"},
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
		energy_per_movement = "10KJ",
		energy_per_rotation = "10KJ",
		energy_source = { drain = "1kW" },
		extension_speed = 0.07,
		rotation_speed = 0.0457,
		next_upgrade = "inserter-long-stack",
	}
),
--Base "filter-inserter" placeholder
--Base "stack-inserter" placeholder
--Long Stack Inserter
xmutil.clone("inserter", "stack-inserter",
	{
		{
			"__base__/graphics/entity/stack-inserter/(h?r?-?)stack-inserter-",
			"__xander-v1-graphics__/graphics/entity/logistic/inserter-long-stack/%1",
		},
	},
	{
		name = "inserter-long-stack",
		icon = "__xander-mod-v1__/graphics/item/logistic/inserter/inserter-long-stack.png",
		minable = {mining_time = 0.5, result = "inserter-long-stack"},
		max_health = 200,
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
		energy_per_movement = "40KJ",
		energy_per_rotation = "40KJ",
		energy_source = { drain = "2kW" },
		extension_speed = 0.07,
		rotation_speed = 0.0457,
	}
),
--Base "stack-filter-inserter" placeholder

}
)


-- XM "inserter-slow"
data.raw.inserter["inserter-slow"].next_upgrade = "inserter"

-- XM "inserter-long-fast"
data.raw.inserter["inserter-long-fast"].fast_replaceable_group = "long-handed-inserter"

-- XM "inserter-long-stack"
data.raw.inserter["inserter-long-stack"].fast_replaceable_group = "long-handed-inserter"
