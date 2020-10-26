#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;

static shapedRecipes as IIngredient[][][][IItemStack] = {
	/*
    <abyssalcraft:necronomicon:0>: [
		[
			[<minecraft:rotten_flesh:0>, <abyssalcraft:corflesh:0>, <minecraft:rotten_flesh:0>],
			[<abyssalcraft:corflesh:0>, <primal:plant_cloth:0>, <abyssalcraft:corflesh:0>],
			[<minecraft:rotten_flesh:0>, <abyssalcraft:corflesh:0>, <minecraft:rotten_flesh:0>]
		]
	]
    */
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

];

static removeFurnace as IIngredient[] = [

];

function machineRecipes() {
    //Alloying
    Alloy.removeRecipe(<liquid:steel>);
    Alloy.removeRecipe(<liquid:brass>);
    Alloy.removeRecipe(<liquid:alubrass>);
    Alloy.removeRecipe(<liquid:red_alloy>);
    Alloy.removeRecipe(<liquid:tin_alloy>);
    Alloy.removeRecipe(<liquid:battery_alloy>);
    Alloy.removeRecipe(<liquid:soldering_alloy>);
    Alloy.removeRecipe(<liquid:magnalium>);
    Alloy.addRecipe(<liquid:alubrass> * 4, [<liquid:aluminium> * 3, <liquid:copper>]);


    //Melting
    Melting.removeRecipe(<liquid:stone>*72, <minecraft:cobblestone>);
    Melting.removeRecipe(<liquid:stone>*72, <minecraft:stone>);

    Melting.removeRecipe(<liquid:glass>*1000, <minecraft:sand>);


    //Casting
    Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
    mods.jei.JEI.hide(<tconstruct:cast_custom:3>);
    Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
    mods.jei.JEI.hide(<tconstruct:cast_custom:4>);


    //Tinkers
    recipes.remove(<tconstruct:tooltables>);
    recipes.addShaped(<tconstruct:tooltables>,[
    [<minecraft:crafting_table>],
    [<gregtech:meta_tool:5>]
    ]);

    recipes.remove(<tconstruct:pattern>);
    recipes.addShaped(<tconstruct:pattern>*2,[
    [null,<gregtech:meta_item_2:32011>],
    [<gregtech:meta_tool:5>]
    ]);

    recipes.remove(<tconstruct:wooden_hopper>);
    recipes.addShaped(<tconstruct:wooden_hopper>,[
    [<ore:plankWood>,null,<ore:plankWood>],
    [<ore:plankWood>,<ore:chestWood>,<ore:plankWood>],
    [<gregtech:meta_tool:5>,<ore:plankWood>,<gregtech:meta_tool:6>]
    ]);

    recipes.remove(<tconstruct:smeltery_controller>);
    recipes.addShaped(<tconstruct:smeltery_controller>,[
    [<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
    [<tconstruct:materials>,<gregtech:meta_tool:6>,<tconstruct:materials>],
    [<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]
    ]);

    recipes.remove(<tconstruct:seared_tank>);
    recipes.addShaped(<tconstruct:seared_tank>,[
    [<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
    [<tconstruct:materials>,null,<tconstruct:materials>],
    [<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]
    ]);

    mods.jei.JEI.removeAndHide(<tconstruct:stone_stick>);

    mods.jei.JEI.removeAndHide(<tconstruct:throwball:1>);

    //Patterns
    mods.jei.JEI.removeAndHide(<tconstruct:tooltables:1>);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:large_plate"}),[
    [<tconstruct:pattern>,<gregtech:meta_tool:17>,null],
    [null,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:pick_head"}),[
    [<tconstruct:pattern>,null,<gregtech:meta_tool:17>],
    [null,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:arrow_head"}),[
    [<tconstruct:pattern>,null,null],
    [<gregtech:meta_tool:17>,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:large_sword_blade"}),[
    [<tconstruct:pattern>,null,null],
    [null,<gregtech:meta_tool:17>,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:kama_head"}),[
    [<tconstruct:pattern>,null,null],
    [null,null,<gregtech:meta_tool:17>],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:cross_guard"}),[
    [<tconstruct:pattern>,null,null],
    [null,null,null],
    [<gregtech:meta_tool:17>,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:arrow_shaft"}),[
    [<tconstruct:pattern>,null,null],
    [null,null,null],
    [null,<gregtech:meta_tool:17>,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:excavator_head"}),[
    [<tconstruct:pattern>,null,null],
    [null,null,null],
    [null,null,<gregtech:meta_tool:17>]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:tool_rod"}),[
    [<gregtech:meta_tool:17>,<tconstruct:pattern>,null],
    [null,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:broad_axe_head"}),[
    [null,<tconstruct:pattern>,<gregtech:meta_tool:17>],
    [null,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:sign_head"}),[
    [null,<tconstruct:pattern>,null],
    [<gregtech:meta_tool:17>,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:tough_binding"}),[
    [null,<tconstruct:pattern>,null],
    [null,<gregtech:meta_tool:17>,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:axe_head"}),[
    [null,<tconstruct:pattern>,null],
    [null,null,<gregtech:meta_tool:17>],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:scythe_head"}),[
    [null,<tconstruct:pattern>,null],
    [null,null,null],
    [<gregtech:meta_tool:17>,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:sharpening_kit"}),[
    [null,<tconstruct:pattern>,null],
    [null,null,null],
    [null,<gregtech:meta_tool:17>,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:shard"}),[
    [null,<tconstruct:pattern>,null],
    [null,null,null],
    [null,null,<gregtech:meta_tool:17>]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:binding"}),[
    [<gregtech:meta_tool:17>,null,<tconstruct:pattern>],
    [null,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:tough_tool_rod"}),[
    [null,<gregtech:meta_tool:17>,<tconstruct:pattern>],
    [null,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:wide_guard"}),[
    [null,null,<tconstruct:pattern>],
    [<gregtech:meta_tool:17>,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:hammer_head"}),[
    [null,null,<tconstruct:pattern>],
    [null,<gregtech:meta_tool:17>,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:shovel_head"}),[
    [null,null,<tconstruct:pattern>],
    [null,null,<gregtech:meta_tool:17>],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:pan_head"}),[
    [null,null,<tconstruct:pattern>],
    [null,null,null],
    [<gregtech:meta_tool:17>,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:fletching"}),[
    [null,null,<tconstruct:pattern>],
    [null,null,null],
    [null,<gregtech:meta_tool:17>,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:sword_blade"}),[
    [null,null,<tconstruct:pattern>],
    [null,null,null],
    [null,null,<gregtech:meta_tool:17>]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:knife_blade"}),[
    [<gregtech:meta_tool:17>,null,null],
    [<tconstruct:pattern>,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:bow_string"}),[
    [null,<gregtech:meta_tool:17>,null],
    [<tconstruct:pattern>,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:hand_guard"}),[
    [null,null,<gregtech:meta_tool:17>],
    [<tconstruct:pattern>,null,null],
    [null,null,null]
    ]);

    recipes.addShaped(<tconstruct:pattern>.withTag({PartType: "tconstruct:bow_limb"}),[
    [null,null,null],
    [<tconstruct:pattern>,<gregtech:meta_tool:17>,null],
    [null,null,null]
    ]);
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}