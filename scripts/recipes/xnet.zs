import mods.gregtech.recipe.RecipeMap;

#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<xnet:netcable>,
	<xnet:connector>,
	<xnet:controller>,
	<xnet:router>,
	<xnet:wireless_router>
];

function machineRecipes() {
	val micaFoil = <metaitem:mica_insulator_foil>;
	val hullMV = <meta_tile_entity:gregtech:hull.mv>;


	recipes.addShaped(<xnet:netcable> * 4, [								
		[micaFoil, micaFoil, micaFoil], 
		[<extrautils2:pipe>,<extrautils2:pipe>,<extrautils2:pipe>], 
		[micaFoil, micaFoil, micaFoil]]);
		
	recipes.addShaped(<xnet:connector> * 1, [								
		[micaFoil, <ore:chest>, micaFoil], 
		[<ore:plateRedAlloy>,<ore:circuitBasic>,<ore:plateRedAlloy>], 
		[micaFoil, <ore:plateRedAlloy>, micaFoil]]);

	recipes.addShaped(<xnet:controller> * 1, [								
		[micaFoil, <ore:circuitBasic>, micaFoil], 
		[<ore:plateRedAlloy>,<rftools:machine_frame>,<ore:plateRedAlloy>], 
		[<ore:plateSteel>, <ore:plateGold>, <ore:plateSteel>]]);

	recipes.addShaped(<xnet:router> * 1, [								
		[micaFoil, <ore:circuitBasic>, micaFoil], 
		[<ore:plateRedAlloy>,<rftools:machine_frame>,<ore:plateRedAlloy>], 
		[<ore:plateSteel>, <minecraft:ender_pearl>, <ore:plateSteel>]]);
	recipes.addShaped(<xnet:wireless_router> * 1, [								
		[<minecraft:ender_pearl>, <ore:circuitGood>, <minecraft:ender_pearl>], 
		[<ore:plateRedAlloy>,<xnet:router>,<ore:plateRedAlloy>], 
		[<minecraft:ender_pearl>, <ore:plateRedAlloy>, <minecraft:ender_pearl>]]);
		
	gt.assembler.recipeBuilder().inputs([<extrautils2:pipe> * 3, micaFoil * 6]).outputs([<xnet:netcable> * 8]).duration(80).EUt(16).buildAndRegister();		
	gt.assembler.recipeBuilder().inputs([hullMV * 1, micaFoil * 4, <ore:circuitBasic>]).outputs([<xnet:connector> * 4]).duration(80).EUt(16).buildAndRegister();	
	gt.assembler.recipeBuilder().inputs([<xnet:connector> * 1, micaFoil * 4, <ore:circuitGood>]).outputs([<xnet:advanced_connector> * 4]).duration(80).EUt(60).buildAndRegister();	
	gt.assembler.recipeBuilder().inputs([<rftools:machine_frame> * 1, micaFoil * 4, <ore:circuitBasic>]).outputs([<xnet:controller> * 4]).duration(80).EUt(16).buildAndRegister();	
	gt.assembler.recipeBuilder().inputs([<xnet:controller> * 1, micaFoil * 4, <minecraft:ender_pearl>*1]).outputs([<xnet:router> * 4]).duration(80).EUt(16).buildAndRegister();	
	gt.assembler.recipeBuilder().inputs([<xnet:router> * 1, micaFoil * 4, <minecraft:ender_pearl>*1, <ore:circuitGood>]).outputs([<xnet:wireless_router> * 4]).duration(80).EUt(80).buildAndRegister();	
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}