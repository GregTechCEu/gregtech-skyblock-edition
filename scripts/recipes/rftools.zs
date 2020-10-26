#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static shapedRecipes as IIngredient[][][][IItemStack] = {
    <rftools:machine_frame> : [
		[
			[<ore:plateIron>,<ore:dyeBlue>,<ore:plateIron>],
			[<minecraft:gold_nugget>,<gregtech:machine_casing:0>,<minecraft:gold_nugget>],
			[<ore:plateIron>,<ore:dyeBlue>,<ore:plateIron>]
		]
	],
	<rftools:storage_module> : [
		[
			[<minecraft:quartz>, <minecraft:redstone>, <minecraft:quartz>],
			[<ore:plateGold>, <meta_tile_entity:gregtech:wooden_chest>, <ore:plateGold>],
			[<minecraft:quartz>, <minecraft:redstone>, <minecraft:quartz>]
		]
	],
	<rftools:storage_module:1> : [
		[
			[<minecraft:quartz>, <meta_tile_entity:gregtech:bronze_chest>, <minecraft:quartz>],
			[<ore:gearGold>, <rftools:storage_module>, <ore:gearGold>],
			[<minecraft:quartz>, <minecraft:redstone>, <minecraft:quartz>]
		]
	],
	<rftools:storage_module:2> : [
		[
			[<minecraft:quartz>, <meta_tile_entity:gregtech:steel_chest>, <minecraft:quartz>],
			[<ore:gearBrass>, <rftools:storage_module:1>, <ore:gearBrass>],
			[<ore:ingotGold>, <minecraft:diamond>, <ore:ingotGold>]
		]
	]
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<rftools:machine_frame>,
	<rftools:storage_module>,
	<rftools:storage_module:1>,
	<rftools:storage_module:2>
];

static removeFurnace as IIngredient[] = [

];

function machineRecipes() {

}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}