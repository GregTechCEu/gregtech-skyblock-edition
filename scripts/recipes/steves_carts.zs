#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static shapedRecipes as IIngredient[][][][IItemStack] = {
	<stevescarts:cartmodule:37> : [
		[
			[<ore:plateWood>, null, <ore:plateWood>],
			[<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
			[<stevescarts:modulecomponents:0>, null, <stevescarts:modulecomponents:0>]
		]
	],
	<stevescarts:cartmodule:38> : [
		[
			[<ore:plateSteel>, null, <ore:plateSteel>],
			[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
			[<stevescarts:modulecomponents:1>, null, <stevescarts:modulecomponents:1>]
		]
	],
	<stevescarts:blockcartassembler> : [
		[
			[<ore:plateSteel>, <metaitem:robot.arm.hv>, <ore:plateSteel>],
			[<metaitem:robot.arm.hv>, <gregtech:machine_casing:3>, <metaitem:robot.arm.hv>],
			[<stevescarts:modulecomponents:9>, <ore:plateSteel>, <stevescarts:modulecomponents:9>]
		]
	],
	<stevescarts:cartmodule:0> : [
		[
			[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
			[<meta_tile_entity:gregtech:steam_boiler_coal_steel>, <meta_tile_entity:gregtech:steam_boiler_coal_steel>, <metaitem:electric.motor.hv>],
			[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
		]
	],
	<stevescarts:cartmodule:44> : [
		[
			[<ore:plateSteel>, <ore:plateSteel>],
			[<meta_tile_entity:gregtech:steam_boiler_coal_steel>, <metaitem:electric.motor.hv>],
			[<ore:plateSteel>, <ore:plateSteel>]
		]
	],
	<stevescarts:cartmodule:69> : [
		[
			[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
			[<meta_tile_entity:gregtech:steam_boiler_lava_steel>, <meta_tile_entity:gregtech:steam_boiler_lava_steel>, <metaitem:electric.motor.hv>],
			[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
		]
	],
	<stevescarts:cartmodule:70> : [
		[
			[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
			[<meta_tile_entity:gregtech:steam_boiler_lava_steel>, <meta_tile_entity:gregtech:diesel_generator.hv>, <metaitem:electric.motor.hv>],
			[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
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
	<stevescarts:modulecomponents:9>,
	<stevescarts:modulecomponents:16>,
	<stevescarts:modulecomponents:18>,
	<stevescarts:modulecomponents:30>,
	<stevescarts:modulecomponents:34>,
	<stevescarts:modulecomponents:44>,
	<stevescarts:cartmodule:0>,
	<stevescarts:cartmodule:37>,
	<stevescarts:cartmodule:38>,
	<stevescarts:cartmodule:44>,
	<stevescarts:cartmodule:69>,
	<stevescarts:cartmodule:70>,
	<stevescarts:blockcartassembler>
];

static removeFurnace as IIngredient[] = [

];

function machineRecipes() {
	//Simple PCB
	gt.assembler.recipeBuilder()
        .inputs([gt.getCirc("MV"), <ore:plateNickelZincFerrite>, <ore:lensEmerald>])
        .outputs([<stevescarts:modulecomponents:9>])
        .EUt(500).duration(sec(10))
        .buildAndRegister(); 

	//Advanced PCB
	gt.assembler.recipeBuilder()
        .inputs([<stevescarts:modulecomponents:9> * 4, gt.getCirc("HV"), <ore:foilPolycaprolactam> * 2, <ore:lensEmerald>])
        .outputs([<stevescarts:modulecomponents:16>])
        .EUt(500).duration(sec(10))
        .buildAndRegister(); 

	//Raw Hardener
	gt.alloy_smelter.recipeBuilder()
        .inputs([<ore:dustObsidian> * 2, <ore:dustDiamond>])
        .outputs([<stevescarts:modulecomponents:18>])
        .EUt(900).duration(sec(10))
        .buildAndRegister(); 

	//Chest Pane
	gt.cutting_saw.recipeBuilder()
        .inputs([<ore:plateWood>])
		.fluidInputs([<liquid:water> * 100])
        .outputs([<stevescarts:modulecomponents:30> * 4])
        .EUt(128).duration(sec(10))
        .buildAndRegister(); 

	//Iron Pane
	gt.cutting_saw.recipeBuilder()
        .inputs([<ore:plateIron>])
		.fluidInputs([<liquid:water> * 1000])
        .outputs([<stevescarts:modulecomponents:34> * 4])
        .EUt(128).duration(sec(30))
        .buildAndRegister(); 

	//Solar Panel
	gt.assembler.recipeBuilder()
        .inputs([<metaitem:cover.solar.panel.lv>])
        .outputs([<stevescarts:modulecomponents:44>])
        .EUt(500).duration(sec(10))
        .buildAndRegister(); 
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}