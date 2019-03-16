
--Base Overrides

--coal
data.raw["autoplace-control"]["coal"].order = "b-c"
--copper-ore
data.raw["autoplace-control"]["copper-ore"].order = "b-d"
--crude-oil
data.raw["autoplace-control"]["crude-oil"].order = "b-f"
--iron-ore
data.raw["autoplace-control"]["iron-ore"].order = "b-e"
--uranium-ore
data.raw["autoplace-control"]["uranium-ore"].order = "b-n"
--stone
data.raw["autoplace-control"]["stone"].order = "b-o"


data:extend(
{

--Apatite
{
	type = "autoplace-control",
	name = "apatite",
	richness = true,
	order = "b-a",
	category = "resource",
},
--Bauxite
{
	type = "autoplace-control",
	name = "bauxite",
	richness = true,
	order = "b-b",
	category = "resource",
},
--Base "coal" placeholder
	--order = "b-c"
--Base "copper-ore" placeholder
	--order = "b-d"
--Base "iron-ore" placeholder
	--order = "b-e"
--Base "crude-oil" placeholder
	--order = "b-f"
--Garnierite
{
	type = "autoplace-control",
	name = "garnierite",
	richness = true,
	order = "b-g",
	category = "resource",
},
--Granitic Ore
{
	type = "autoplace-control",
	name = "granitic-ore",
	richness = true,
	order = "b-h",
	category = "resource",
},
--Heavy Mineral Sand
{
	type = "autoplace-control",
	name = "heavy-sand",
	richness = true,
	order = "b-i",
	category = "resource",
},
--Lead Ore
{
	type = "autoplace-control",
	name = "lead-ore",
	richness = true,
	category = "resource",
	order = "b-k",
	category = "resource",
},
--Mineral Water
{
	type = "autoplace-control",
	name = "mineral-water",
	richness = true,
	order = "b-l",
	category = "resource",
},
--Natural Gas
{
	type = "autoplace-control",
	name = "natural-gas",
	richness = true,
	order = "b-m",
	category = "resource",
},
--Base "uranium-ore" placeholder
	--order = "b-n"
--Base "stone" placeholder
	--order = "b-o"
--Sulfidic Ore
{
	type = "autoplace-control",
	name = "sulfidic-ore",
	richness = true,
	order = "b-p",
	category = "resource",
}

}
)
