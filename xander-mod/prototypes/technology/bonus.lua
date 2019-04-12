
--Base Overrides
--Base "weapon-shooting-speed"
data.raw.technology["toolbelt"].prerequisites = {"military", "logistic-science-pack"}

--Base "research-speed"
table.insert(data.raw.technology["research-speed-3"].prerequisites, "chemical-science-pack")
table.insert(data.raw.technology["research-speed-5"].prerequisites, "production-science-pack")
table.insert(data.raw.technology["research-speed-6"].prerequisites, "utility-science-pack")

--Base "mining-productivity"
table.insert(data.raw.technology["mining-productivity-2"].prerequisites, "chemical-science-pack")
table.insert(data.raw.technology["mining-productivity-3"].prerequisites, "utility-science-pack")

--Base "follower-robot-count"
table.insert(data.raw.technology["follower-robot-count-3"].prerequisites, "chemical-science-pack")

--Base "braking-force"
table.insert(data.raw.technology["braking-force-3"].prerequisites, "production-science-pack")
table.insert(data.raw.technology["braking-force-6"].prerequisites, "utility-science-pack")

--Base "inserter-capacity-bonus"
table.insert(data.raw.technology["inserter-capacity-bonus-4"].prerequisites, "production-science-pack")
table.insert(data.raw.technology["inserter-capacity-bonus-7"].prerequisites, "utility-science-pack")

--Base "worker-robots-storage"
table.insert(data.raw.technology["worker-robots-storage-2"].prerequisites, "production-science-pack")
table.insert(data.raw.technology["worker-robots-storage-3"].prerequisites, "utility-science-pack")

--Base "worker-robots-speed"
table.insert(data.raw.technology["worker-robots-speed-3"].prerequisites, "utility-science-pack")
table.insert(data.raw.technology["worker-robots-speed-5"].prerequisites, "production-science-pack")

--Base "character-logistic-trash-slots"
table.insert(data.raw.technology["character-logistic-trash-slots-3"].prerequisites, "utility-science-pack")

--Base "character-logistic-slots"
table.insert(data.raw.technology["character-logistic-slots-4"].prerequisites, "utility-science-pack")

data:extend(
{

--Toolbelt 2
{
	type = "technology",
	name = "toolbelt-2",
	icon = "__base__/graphics/technology/toolbelt.png",
	icon_size = 128,
	effects =
	{
    {
      modifier = 20,
      type = "character-inventory-slots-bonus"
    }
	},
	prerequisites = {"toolbelt", "military-science-pack", "production-science-pack"},
	unit =
	{
		count = 50,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"military-science-pack", 1},
			{"production-science-pack", 1}
		},
		time = 60
	},
	order = "00-13",
}

})