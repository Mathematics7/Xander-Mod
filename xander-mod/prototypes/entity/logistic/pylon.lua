local xmutil = require("xmutil")

--Base Overrides

--Base "small-electric-pole"
data.raw["electric-pole"]["small-electric-pole"].max_health = 50
data.raw["electric-pole"]["small-electric-pole"].next_upgrade = "medium-electric-pole"
data.raw["electric-pole"]["small-electric-pole"].minable.mining_time = 0.5

--Base "medium-electric-pole"
data.raw["electric-pole"]["medium-electric-pole"].minable.mining_time = 0.5

--Base "big-electric-pole" placeholder
data.raw["electric-pole"]["big-electric-pole"].max_health = 200
data.raw["electric-pole"]["big-electric-pole"].fast_replaceable_group = "big-electric-pole"
data.raw["electric-pole"]["big-electric-pole"].minable.mining_time = 0.5

--Base "substation" placeholder
data.raw["electric-pole"]["substation"].fast_replaceable_group = "substation"
data.raw["electric-pole"]["substation"].minable.mining_time = 0.5

data:extend{

--Base "small-electric-pole" placeholder
--Base "medium-electric-pole" placeholder
--High-Tension Medium Electric Pole
xmutil.clone("electric-pole", "medium-electric-pole",
	{
		{
			"__base__/graphics/entity/medium-electric-pole/(h?r?-?)medium-electric-pole.png",
			"__xander-v1-graphics__/graphics/entity/logistic/pylon/%1medium-2.png",
		},
	},
	{
		name = "medium-electric-pole-2",
		icon = "__xander-mod-v1__/graphics/item/logistic/pylon/medium-electric-pole-2.png",
		minable = {mining_time = 0.5, result = "medium-electric-pole-2"},
		max_health = 200,
		maximum_wire_distance = 15,
		supply_area_distance = 6.5,
	}
),
--Base "big-electric-pole" placeholder
--High-Tension Big Electric Pole
xmutil.clone("electric-pole", "big-electric-pole",
	{
		{
			"__base__/graphics/entity/big-electric-pole/(h?r?-?)big-electric-pole.png",
			"__xander-v1-graphics__/graphics/entity/logistic/pylon/%1big-2.png",
		},
	},
	{
		name = "big-electric-pole-2",
		icon = "__xander-mod-v1__/graphics/item/logistic/pylon/big-electric-pole-2.png",
		minable = {mining_time = 0.5, result = "big-electric-pole-2"},
		max_health = 400,
		maximum_wire_distance = 60,
		supply_area_distance = 2,
	}
),
--Base "substation" placeholder
--High-Tension Substation
xmutil.clone("electric-pole", "substation",
	{
		{
			"__base__/graphics/entity/substation/(h?r?-?)substation.png",
			"__xander-v1-graphics__/graphics/entity/logistic/pylon/%1substation-2.png",
		},
	},
	{
		name = "substation-2",
		icon = "__xander-mod-v1__/graphics/item/logistic/pylon/substation-2.png",
		minable = {mining_time = 0.5, result = "substation-2"},
		max_health = 400,
		maximum_wire_distance = 30,
		supply_area_distance = 15,
	}
),

}



--Base "medium-electric-pole"
data.raw["electric-pole"]["medium-electric-pole"].next_upgrade = "medium-electric-pole-2"

--Base "big-electric-pole" placeholder
data.raw["electric-pole"]["big-electric-pole"].next_upgrade = "big-electric-pole-2"

--Base "substation" placeholder
data.raw["electric-pole"]["substation"].next_upgrade = "substation-2"
