#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
    <extrautils2:pipe> : [
        [<thermaldynamics:duct_16:*>],
        [<thermaldynamics:duct_32:*>]
    ]
};

function machineRecipes() {

    recipes.removeByRecipeName("extrautils2:shortcut_hopper");
    recipes.removeByRecipeName("extrautils2:shortcut_chest");
    recipes.removeByRecipeName("extrautils2:shortcut_stick");
    recipes.removeByRecipeName("extrautils2:angel_ring_1");
    recipes.removeByRecipeName("extrautils2:angel_ring_2");
    recipes.removeByRecipeName("extrautils2:angel_ring_3");
    recipes.removeByRecipeName("extrautils2:angel_ring_4");
    recipes.removeByRecipeName("extrautils2:angel_ring_5");

    recipes.remove(<extrautils2:miner>);
    recipes.addShapeless(<extrautils2:miner>, [<minecraft:dropper>,<extrautils2:ingredients:0>, <gregtech:meta_tool:1>.withTag({"GT.ToolStats": {Material: "flint"}}).noReturn()]);

    recipes.remove(<extrautils2:teleporter:1>);
    recipes.addShaped(<extrautils2:teleporter:1>, [
    [<extrautils2:compressedcobblestone:3>,<gregtech:meta_item_1:32683>,<extrautils2:compressedcobblestone:3>],
    [<gregtech:meta_item_1:32683>,<gregtech:machine_casing:4>, <gregtech:meta_item_1:32683>],
    [<extrautils2:compressedcobblestone:3>,<gregtech:meta_item_1:32673>,<extrautils2:compressedcobblestone:3>]
    ]);

    var liquidXP = <liquid:xpjuice>;
    gt.chemical_reactor.recipeBuilder()
        .inputs([<ore:plateGold>, <ore:plateLapis>])
        .fluidInputs([liquidXP*1000])
        .outputs([<extrautils2:ingredients:12>])
        .EUt(80).duration(120)
        .buildAndRegister();
    gt.chemical_reactor.recipeBuilder()
        .inputs([<ore:blockIron>, <minecraft:nether_star>])
        .fluidInputs([liquidXP*1000])
        .outputs([<extrautils2:ingredients:17>*8])
        .EUt(8000).duration(1200)
        .buildAndRegister();

    recipes.remove(<extrautils2:ingredients:8>);
    recipes.addShapeless(<extrautils2:ingredients:8>, [<extrautils2:ingredients:9>, <gregtech:meta_tool:1>.withTag({"GT.ToolStats": {Material: "flint"}}).noReturn(), <ore:circuitBasic>]);

    //Spikes
    recipes.remove(<extrautils2:spike_wood>);
    recipes.addShaped(<extrautils2:spike_wood>*4,[
    [null,<gregtech:meta_tool:17>.withTag({"GT.ToolStats": {Material: "flint"}}).noReturn()],
    [<gregtech:meta_tool:17>.withTag({"GT.ToolStats": {Material: "flint"}}).noReturn(),<ore:plankWood>,<gregtech:meta_tool:17>.withTag({"GT.ToolStats": {Material: "flint"}}).noReturn()],
    [<ore:plankWood>,<ore:logWood>,<ore:plankWood>]
    ]);
    recipes.remove(<extrautils2:spike_stone>);
    recipes.addShaped(<extrautils2:spike_stone>*4,[
    [null,<gregtech:meta_tool>.withTag({"GT.ToolStats": {Material: "flint"}}).noReturn()],
    [<gregtech:meta_tool>.withTag({"GT.ToolStats": {Material: "flint"}}).noReturn(),<ore:cobblestone>,<gregtech:meta_tool>.withTag({"GT.ToolStats": {Material: "flint"}}).noReturn()],
    [<ore:cobblestone>,<ore:stone>,<ore:cobblestone>]
    ]);
    recipes.remove(<extrautils2:spike_iron>);
    recipes.addShaped(<extrautils2:spike_iron>*4,[
    [null,<ore:toolHeadSwordIron>],
    [<ore:toolHeadSwordIron>,<ore:blockIron>,<ore:toolHeadSwordIron>]
    ]);
    recipes.remove(<extrautils2:spike_gold>);
    recipes.addShaped(<extrautils2:spike_gold>*4,[
    [null,<ore:toolHeadSwordRoseGold>],
    [<ore:toolHeadSwordRoseGold>,<ore:blockGold>,<ore:toolHeadSwordRoseGold>]
    ]);
    recipes.remove(<extrautils2:spike_diamond>);
    recipes.addShaped(<extrautils2:spike_diamond>*4,[
    [null,<ore:toolHeadSwordDiamond>],
    [<ore:toolHeadSwordDiamond>,<ore:blockDiamond>,<ore:toolHeadSwordDiamond>]
    ]);
    recipes.remove(<extrautils2:pipe>);
    recipes.addShaped(<extrautils2:pipe>*4,[
    [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
    [<ore:blockGlass>,<minecraft:redstone>,<ore:blockGlass>],
    [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
    ]);

    recipes.addShaped(<extrautils2:passivegenerator:6>,[
    [<gregtech:meta_item_2:32439>, <ore:circuitGood>, <gregtech:meta_item_2:32439>],
    [<ore:circuitGood>,<gregtech:machine:502>,<ore:circuitGood>],
    [<gregtech:meta_item_2:32439>,<ore:circuitGood>,<gregtech:meta_item_2:32439>]
    ]);

    recipes.remove(<extrautils2:angelring>);
    gt.assembly_line.recipeBuilder().duration(6000).EUt(32000).notConsumable(<gtadditions:ga_armor:13>).inputs([<gregtech:meta_item_2:32479>*64, <gregtech:meta_item_1:32675>*4, <ore:circuitSuperconductor>,<ore:circuitSuperconductor>,<ore:circuitSuperconductor>,<ore:circuitSuperconductor>, <gregtech:cable:354>*64]).outputs([<extrautils2:angelring>]).buildAndRegister();

    //exploit with creative generator
    mods.jei.JEI.removeAndHide(<extrautils2:ingredients:4>);
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}