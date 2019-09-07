local xmutil = require("xmutil")

--Base Overrides

--Base "stone-wall"
data.raw.wall["stone-wall"].max_health = 200
data.raw.wall["stone-wall"].minable.mining_time = 0.5
--Base "gate"
data.raw.gate["gate"].max_health = 200
data.raw.gate["gate"].minable.mining_time = 0.5

--Base "gun-turret"
--Base "flamethrower-turret"

--Base "laser-turret"
data.raw["electric-turret"]["laser-turret"].rotation_speed = 0.005
data.raw["electric-turret"]["laser-turret"].energy_source =
{
	type = "electric",
	buffer_capacity = "1MJ",
	input_flow_limit = "12MW",
	drain = "30kW",
	usage_priority = "primary-input"
}
data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "laser-turret"

--Base "radar"
data.raw.radar["radar"].max_health = 200
data.raw.radar["radar"].max_distance_of_sector_revealed = 10
data.raw.radar["radar"].max_distance_of_nearby_sector_revealed = 2
data.raw.radar["radar"].energy_per_nearby_scan = "200kJ"
data.raw.radar["radar"].fast_replaceable_group = "radar"
data.raw.radar["radar"].minable.mining_time = 0.5

--Base "car"
--Base "tank"
data.raw.car["tank"].consumption = "500kW"
data.raw.car["tank"].turret_rotation_speed = 0.005
data.raw.car["tank"].minable.mining_time = 1

data:extend(
{

--Base "stone-wall" placeholder
--Brick Wall
xmutil.clone("wall", "stone-wall",
	{
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-corner-left.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-2/%1corner-left.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-corner-right.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-2/%1corner-right.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-ending-left.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-2/%1ending-left.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-ending-right.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-2/%1ending-right.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-gate.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-2/%1gate.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-horizontal.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-2/%1horizontal.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-single.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-2/%1single.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-t.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-2/%1t.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-vertical.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-2/%1vertical.png",
		},
	},
	{
		name = "wall-2",
		icon = "__xander-mod-v1__/graphics/item/combat/structure/wall-2.png",
		minable = {mining_time = 0.5, result = "wall-2"},
		max_health = 100,
    next_upgrade = "wall-3"
	}
),
--Concrete Wall
xmutil.clone("wall", "stone-wall",
	{
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-corner-left.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-3/%1corner-left.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-corner-right.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-3/%1corner-right.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-ending-left.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-3/%1ending-left.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-ending-right.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-3/%1ending-right.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-gate.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-3/%1gate.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-horizontal.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-3/%1horizontal.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-single.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-3/%1single.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-t.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-3/%1t.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-vertical.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-3/%1vertical.png",
		},
	},
	{
		name = "wall-3",
		icon = "__xander-mod-v1__/graphics/item/combat/structure/wall-3.png",
		minable = {mining_time = 0.5, result = "wall-3"},
		max_health = 400,
    next_upgrade = "wall-4"
	}
),
--Armored Basalt Wall
xmutil.clone("wall", "stone-wall",
	{
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-corner-left.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-4/%1corner-left.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-corner-right.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-4/%1corner-right.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-ending-left.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-4/%1ending-left.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-ending-right.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-4/%1ending-right.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-gate.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-4/%1gate.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-horizontal.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-4/%1horizontal.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-single.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-4/%1single.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-t.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-4/%1t.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-vertical.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-4/%1vertical.png",
		},
	},
	{
		name = "wall-4",
		icon = "__xander-mod-v1__/graphics/item/combat/structure/wall-4.png",
		minable = {mining_time = 0.5, result = "wall-4"},
		max_health = 600,
    next_upgrade = "wall-5"
	}
),
--Impervious Wall
xmutil.clone("wall", "stone-wall",
	{
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-corner-left.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-5/%1corner-left.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-corner-right.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-5/%1corner-right.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-ending-left.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-5/%1ending-left.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-ending-right.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-5/%1ending-right.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-gate.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-5/%1gate.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-horizontal.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-5/%1horizontal.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-single.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-5/%1single.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-t.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-5/%1t.png",
		},
		{
			"__base__/graphics/entity/wall/(h?r?-?)wall-vertical.png",
			"__xander-mod-v1__/graphics/entity/combat/wall-5/%1vertical.png",
		},
	},
	{
		name = "wall-5",
		icon = "__xander-mod-v1__/graphics/item/combat/structure/wall-5.png",
		minable = {mining_time = 0.5, result = "wall-4"},
		max_health = 1000,
	}
),
--Base "gate" placeholder
--Armored Gate
xmutil.clone("gate", "gate",
	{
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-horizontal.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-2/%1horizontal.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-rail-horizontal-left.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-2/%1rail-horizontal-left.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-rail-horizontal-right.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-2/%1rail-horizontal-right.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-rail-vertical-left.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-2/%1rail-vertical-left.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-rail-vertical-right.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-2/%1rail-vertical-right.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-vertical.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-2/%1vertical.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-wall-patch.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-2/%1wall-patch.png",
		},
	},
	{
		name = "gate-2",
		icon = "__xander-mod-v1__/graphics/item/combat/structure/gate-2.png",
		minable = {mining_time = 0.5, result = "gate-2"},
		max_health = 600,
		opening_speed = 0.08,
    next_upgrade = "gate-3"
	}
),
--Impervious Gate
xmutil.clone("gate", "gate",
	{
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-horizontal.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-3/%1horizontal.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-rail-horizontal-left.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-3/%1rail-horizontal-left.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-rail-horizontal-right.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-3/%1rail-horizontal-right.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-rail-vertical-left.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-3/%1rail-vertical-left.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-rail-vertical-right.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-3/%1rail-vertical-right.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-vertical.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-3/%1vertical.png",
		},
		{
			"__base__/graphics/entity/gate/(h?r?-?)gate-wall-patch.png",
			"__xander-mod-v1__/graphics/entity/combat/gate-3/%1wall-patch.png",
		},
	},
	{
		name = "gate-3",
		icon = "__xander-mod-v1__/graphics/item/combat/structure/gate-3.png",
		minable = {mining_time = 0.5, result = "gate-3"},
		max_health = 1000,
		opening_speed = 0.08,
	}
),

--Base "gun-turret" placeholder
--Base "flamethrower-turret" placeholder

--Base "laser-turret" placeholder
--CO2 Laser Turret
xmutil.clone("electric-turret", "laser-turret",
{
	{
    "__base__/graphics/entity/laser-turret/(h?r?-?)laser-turret-base.png",
    "__xander-mod-v1__/graphics/entity/combat/laser-turret-2/%1base.png"
  },
  {
    "__base__/graphics/entity/laser-turret/(h?r?-?)laser-turret-shooting.png",
    "__xander-mod-v1__/graphics/entity/combat/laser-turret-2/%1shooting.png"
  },
  {
    "__base__/graphics/entity/laser-turret/(h?r?-?)laser-turret-raising.png",
    "__xander-mod-v1__/graphics/entity/combat/laser-turret-2/%1raising.png"
  },
},
{
	type = "electric-turret",
	name = "laser-turret-2",
	icon = "__xander-mod-v1__/graphics/item/combat/structure/laser-turret-2.png",
	icon_size = 32,
	flags = {"placeable-player", "placeable-enemy", "player-creation"},
	minable = {mining_time = 0.5, result = "laser-turret-2"},
	max_health = 2000,
	corpse = "medium-remnants",
	collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
	selection_box = {{-1, -1}, {1, 1}},
	rotation_speed = 0.01,
	preparing_speed = 0.1,
	dying_explosion = "medium-explosion",
	folding_speed = 0.1,
	energy_source =
	{
		type = "electric",
		buffer_capacity = "2MJ",
		input_flow_limit = "24MW",
		drain = "60kW",
		usage_priority = "primary-input"
	},
	attack_parameters = {
    ammo_type = {
      action = {
        action_delivery = {
          beam = "laser-beam",
          duration = 20,
          max_length = 24,
          source_offset = {
            0,
            -1.3143899999999999
          },
          type = "beam"
        },
        type = "direct"
      },
      category = "laser-turret",
      energy_consumption = "1.5MJ"
    },
    cooldown = 15,
    damage_modifier = 6,
    range = 30,
    source_direction_count = 64,
    source_offset = {
      0,
      -0.85587225
    },
    type = "beam"
  },
	call_for_help_radius = 40,
  next_upgrade = "laser-turret-3"
}
),
--Nd:YAG Laser Turret
xmutil.clone("electric-turret", "laser-turret",
{
  {
    "__base__/graphics/entity/laser-turret/(h?r?-?)laser-turret-base.png",
    "__xander-mod-v1__/graphics/entity/combat/laser-turret-3/%1base.png"
  },
  {
    "__base__/graphics/entity/laser-turret/(h?r?-?)laser-turret-shooting.png",
    "__xander-mod-v1__/graphics/entity/combat/laser-turret-3/%1shooting.png"
  },
  {
    "__base__/graphics/entity/laser-turret/(h?r?-?)laser-turret-raising.png",
    "__xander-mod-v1__/graphics/entity/combat/laser-turret-3/%1raising.png"
  },
},
{
	type = "electric-turret",
	name = "laser-turret-3",
	icon = "__xander-mod-v1__/graphics/item/combat/structure/laser-turret-3.png",
	icon_size = 32,
	flags = {"placeable-player", "placeable-enemy", "player-creation"},
	minable = {mining_time = 0.5, result = "laser-turret-3"},
	max_health = 4000,
	corpse = "medium-remnants",
	collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
	selection_box = {{-1, -1}, {1, 1}},
	rotation_speed = 0.02,
	preparing_speed = 0.2,
	dying_explosion = "medium-explosion",
	folding_speed = 0.2,
	energy_source =
	{
		type = "electric",
		buffer_capacity = "3MJ",
		input_flow_limit = "48MW",
		drain = "120kW",
		usage_priority = "primary-input"
	},
  attack_parameters = {
    ammo_type = {
      action = {
        action_delivery = {
          beam = "laser-beam",
          duration = 20,
          max_length = 24,
          source_offset = {
            0,
            -1.3143899999999999
          },
          type = "beam"
        },
        type = "direct"
      },
      category = "laser-turret",
      energy_consumption = "2MJ"
    },
    cooldown = 10,
    damage_modifier = 8,
    range = 40,
    source_direction_count = 64,
    source_offset = {
      0,
      -0.85587225
    },
    type = "beam"
  },

	call_for_help_radius = 40
}
),

--Base "radar" placeholder
--Doppler Radar
xmutil.clone("radar", "radar",
{},
{
	name = "radar-2",
	icon = "__xander-mod-v1__/graphics/item/combat/structure/radar-2.png",
	minable = {mining_time = 0.5, result = "radar-2"},
	max_health = 300,
	energy_per_sector = "20MJ",
	max_distance_of_sector_revealed = 31,
	max_distance_of_nearby_sector_revealed = 1,
	energy_per_nearby_scan = "200kJ",
	energy_usage = "500kW",
	pictures = {
    layers = {
      {
        apply_projection = false,
        direction_count = 64,
        filename = "__xander-mod-v1__/graphics/entity/combat/radar-2/radar.png",
        height = 128,
        hr_version = {
          apply_projection = false,
          direction_count = 64,
          filename = "__xander-mod-v1__/graphics/entity/combat/radar-2/hr-radar.png",
          height = 254,
          line_length = 8,
          priority = "low",
          scale = 0.5,
          shift = {
            0.03125,
            -0.5
          },
          width = 196
        },
        line_length = 8,
        priority = "low",
        shift = {
          0.03125,
          -0.5
        },
        width = 98
      }
    }
  },
  next_upgrade = "radar-3"
}
),
--LIDAR Scanning Array
xmutil.clone("radar", "radar",
{},
{
	name = "radar-3",
	icon = "__xander-mod-v1__/graphics/item/combat/structure/radar-3.png",
	minable = {mining_time = 0.5, result = "radar-3"},
	max_health = 500,
	energy_per_sector = "10MJ",
	max_distance_of_sector_revealed = 8,
	max_distance_of_nearby_sector_revealed = 7,
	energy_per_nearby_scan = "1MJ",
	energy_usage = "1MW",
	pictures = {
    layers = {
      {
        apply_projection = false,
        direction_count = 64,
        filename = "__xander-mod-v1__/graphics/entity/combat/radar-3/radar.png",
        height = 128,
        hr_version = {
          apply_projection = false,
          direction_count = 64,
          filename = "__xander-mod-v1__/graphics/entity/combat/radar-3/hr-radar.png",
          height = 254,
          line_length = 8,
          priority = "low",
          scale = 0.5,
          shift = {
            0.03125,
            -0.5
          },
          width = 196
        },
        line_length = 8,
        priority = "low",
        shift = {
          0.03125,
          -0.5
        },
        width = 98
      }
    }
  },
}
),

--Base "car" placeholder
--Base "tank" placeholder
--Artillery Crawler
xmutil.clone("car", "tank",
	{
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-base-1.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-2/%1base-1.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-base-2.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-2/%1base-2.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-base-3.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-2/%1base-3.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-base-4.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-2/%1base-4.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-turret.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-2/%1turret.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-turret-mask.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-2/%1turret-mask.png",
    },
  },
	{
		name = "artillery-crawler",
		icon = "__xander-mod-v1__/graphics/item/combat/structure/artillery-crawler.png",
		minable = {mining_time = 1, result = "artillery-crawler"},
		braking_power = "500kW",
		consumption = "1MW",
		turret_rotation_speed = 0.005,
		guns = {"artillery-cannon", "tank-machine-gun", xmutil.NIL},
	}
),
--Tank Mark 2
xmutil.clone("car", "tank",
  {
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-base-1.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-3/%1base-1.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-base-2.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-3/%1base-2.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-base-3.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-3/%1base-3.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-base-4.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-3/%1base-4.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-turret.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-3/%1turret.png",
    },
    {
      "__base__/graphics/entity/tank/(h?r?-?)tank-turret-mask.png",
      "__xander-mod-v1__/graphics/entity/combat/tank-3/%1turret-mask.png",
    },
  },
	{
		name = "tank-2",
		icon = "__xander-mod-v1__/graphics/item/combat/structure/tank-2.png",
		minable = {mining_time = 1, result = "tank-2"},
		max_health = 6000,
		braking_power = "2MW",
		consumption = "2MW",
		terrain_friction_modifier = 0.1,
		turret_rotation_speed = 0.02,
		weight = 40000,
		inventory_size = 50,
		guns = {"tank-railgun", "tank-machine-gun", "tank-flamethrower"},
	}
),

}
)


--Base "stone-wall"
data.raw.wall["stone-wall"].next_upgrade = "wall-2"
--Base "gate"
data.raw.gate["gate"].next_upgrade = "gate-2"
--Base "laser-turret"
data.raw["electric-turret"]["laser-turret"].next_upgrade = "laser-turret-2"
--Base "radar"
data.raw.radar["radar"].next_upgrade = "radar-2"
