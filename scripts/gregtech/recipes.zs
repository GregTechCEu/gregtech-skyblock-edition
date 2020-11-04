#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.FuelRecipe;
import mods.gtadditions.recipe.Utils;

static shapedRecipes as IIngredient[][][][IItemStack] = {
    /*
    <gregtech:metal_casing:1> : [
		[
			[<ore:ingotFireclay>, <ore:ingotFireclay>],
			[<ore:ingotFireclay>, <ore:ingotFireclay>]
		]
	]*/
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
    //<gregtech:meta_item_2:32015>,
    //<gregtech:metal_casing:1>,
    <opencomputers:material:6>
];

static removeFurnace as IIngredient[] = [

];

function machineRecipes() {
    //Compressed Fireclay
    //Utils.removeRecipeByOutput(gt.compressor, [<gregtech:meta_item_2:32014>], [], false); //Compressed Fireclay
    //furnace.addRecipe(<gregtech:meta_item_2:32015>, <gtadditions:ga_meta_item:32037>);

    //Glass
    gt.alloy_smelter.recipeBuilder()
        .inputs([<ore:dustGlass>])
        .notConsumable(<metaitem:shape.mold.block>)
        .outputs([<tconstruct:clear_glass:0>])
        .duration(sec(8)).EUt(8)
        .buildAndRegister();

    //Useful
    gt.lathe.recipeBuilder()
        .inputs([<minecraft:stone>])
        .outputs([<exnihilocreatio:item_material:6>,<gregtech:meta_item_1:1328>*2])
        .duration(500).EUt(16)
        .buildAndRegister();

    //opencomputers gate
     gt.assembler.recipeBuilder()
        .inputs([gt.getCirc("LV"), <ore:wireFineGold> * 4, <ore:wireFineRedAlloy> * 2])
        .fluidInputs([<liquid:rubber> * 288])
        .outputs([<opencomputers:material:6> * 8])
        .duration(sec(10)).EUt(120)
        .buildAndRegister();

    //Porcelain Brick
    gt.alloy_smelter.recipeBuilder()
        .inputs([<ore:clayPorcelain>])
        .notConsumable(<metaitem:shape.mold.ingot>)
        .outputs([<ceramics:unfired_clay:5>])
        .duration(200).EUt(2)
        .buildAndRegister();

    //Glasses

    //Storage Drawers
    gt.cutting_saw.recipeBuilder()
        .inputs([<ore:drawerTrim>])
        .outputs([<storagedrawers:upgrade_template>*2])
        .EUt(4).duration(50)
        .buildAndRegister();

    //Forestry Automation
    gt.fluid_extractor.recipeBuilder().inputs([<forestry:crafting_material:5>]).fluidOutputs([<liquid:ice>]).EUt(128).duration(128).buildAndRegister();
    gt.assembler.recipeBuilder().inputs([<ore:plateBrass>*8]).outputs([<forestry:sturdy_machine>]).property("circuit",8).duration(50).EUt(16).buildAndRegister();
    gt.assembler.recipeBuilder().inputs([<forestry:sturdy_machine>,<ore:plateTin>*4,<ore:plateWroughtIron>*4]).outputs([<genetics:misc>]).duration(50).EUt(16).buildAndRegister();
    gt.assembler.recipeBuilder().inputs([<genetics:misc>,<ore:plateDiamond>*8]).fluidInputs([<liquid:water>*5000]).outputs([<forestry:hardened_machine>]).duration(50).EUt(64).buildAndRegister();

    //Fix Compressor recipes for Blocks
    recipes.remove(<ore:blockCopper>);
    recipes.remove(<ore:blockTin>);
    recipes.remove(<ore:blockBronze>);
    recipes.remove(<ore:blockApatite>);
    recipes.remove(<forestry:apatite>);
    gt.compressor.recipeBuilder().inputs([<ore:ingotTin>*9]).outputs([<gregtech:compressed_3:9>]).EUt(2).duration(400).buildAndRegister();
    gt.compressor.recipeBuilder().inputs([<ore:ingotCopper>*9]).outputs([<gregtech:compressed_0:15>]).EUt(2).duration(400).buildAndRegister();
    gt.compressor.recipeBuilder().inputs([<ore:ingotBronze>*9]).outputs([<gregtech:compressed_4:10>]).EUt(2).duration(400).buildAndRegister();
    gt.compressor.recipeBuilder().inputs([<ore:gemApatite>*9]).outputs([<gregtech:compressed_10:5>]).EUt(2).duration(400).buildAndRegister();

    //Flexible Casing
    gt.assembler.recipeBuilder().inputs(<ore:plateBronze>*4,<ore:plateEmerald>*2,<forestry:impregnated_casing>).fluidInputs(<liquid:glass>*200).outputs(<forestry:flexible_casing>).EUt(30).duration(20).buildAndRegister();

    //Barrel Recipes
    gt.chemical_bath.recipeBuilder().inputs([<ore:dust>]).fluidInputs([<liquid:water>*1000]).outputs([<minecraft:clay>]).EUt(1).duration(16).buildAndRegister();
    gt.chemical_bath.recipeBuilder().inputs([<ore:dustRedstone>]).fluidInputs([<liquid:lava>*1000]).outputs([<minecraft:netherrack>]).EUt(1).duration(16).buildAndRegister();
    gt.chemical_bath.recipeBuilder().inputs([<ore:dustGlowstone>]).fluidInputs([<liquid:deuterium>*1000]).outputs([<minecraft:end_stone>]).EUt(1).duration(16).buildAndRegister();
    gt.chemical_bath.recipeBuilder().inputs([<ore:sand>]).fluidInputs([<liquid:witchwater>*1000]).outputs([<minecraft:soul_sand>]).EUt(1).duration(16).buildAndRegister();
    gt.chemical_bath.recipeBuilder().inputs([<minecraft:brown_mushroom>]).fluidInputs([<liquid:milk>*1000]).outputs([<minecraft:slime>,<minecraft:slime_ball>]).EUt(2).duration(20).buildAndRegister();
    gt.chemical_bath.recipeBuilder().inputs([<minecraft:red_mushroom>]).fluidInputs([<liquid:milk>*1000]).outputs([<minecraft:slime>,<minecraft:slime_ball>]).EUt(2).duration(20).buildAndRegister();
    gt.chemical_reactor.recipeBuilder().notConsumable(<minecraft:mycelium>).fluidInputs([<liquid:water>*1000]).fluidOutputs([<liquid:witchwater>*1000]).EUt(4).duration(80).buildAndRegister();

    //Hopper replacement
    gt.assembler.findRecipe(2,[<gregtech:meta_item_1:12033>*5,<minecraft:chest>],[null]).remove();
    gt.assembler.findRecipe(2,[<gregtech:meta_item_1:12197>*5,<minecraft:chest>],[null]).remove();
    gt.assembler.findRecipe(2,[<gregtech:meta_item_1:12033>*5,<minecraft:trapped_chest>],[null]).remove();
    gt.assembler.findRecipe(2,[<gregtech:meta_item_1:12197>*5,<minecraft:trapped_chest>],[null]).remove();
    gt.macerator.findRecipe(8,[<minecraft:hopper>],[null]).remove();
    gt.fluid_extractor.findRecipe(32,[<minecraft:hopper>],[null]).remove();


    //Remove The Alloy Smelters actual alloying
    gt.alloy_smelter.findRecipe(16,[<minecraft:redstone>*4,<gregtech:meta_item_1:10018>],[null]).remove();
    gt.alloy_smelter.findRecipe(16,[<minecraft:redstone>*4,<gregtech:meta_item_1:2018>],[null]).remove();
    gt.alloy_smelter.findRecipe(16,[<minecraft:redstone>*4,<gregtech:meta_item_1:10087>],[null]).remove();
    gt.alloy_smelter.findRecipe(16,[<minecraft:redstone>*4,<gregtech:meta_item_1:2087>],[null]).remove();

    //Fix mistakes
    gt.centrifuge.findRecipe(5,[null],[<liquid:liquid_air>*53000]).remove();

    //Prismarine Crystals
    gt.forge_hammer.recipeBuilder().inputs([<minecraft:prismarine_shard>]).outputs([<minecraft:prismarine_crystals>*2]).EUt(16).duration(20).buildAndRegister();

    //lava
    var lavaRecipe = FuelRecipe.create(<liquid:lava>*64, 1,32);
    mods.gregtech.recipe.RecipeMaps.SEMI_FLUID_GENERATOR_FUELS.addRecipe(lavaRecipe);


    //credits
    gt.alloy_smelter.recipeBuilder().duration(4800).EUt(16).notConsumable(<gregtech:meta_item_1:32304>).inputs([<gregtech:meta_item_1:13018>*8]).outputs([<gregtech:meta_item_1:32000>]).buildAndRegister();
    gt.alloy_smelter.recipeBuilder().duration(4800).EUt(64).notConsumable(<gregtech:meta_item_1:32304>).inputs([<gregtech:meta_item_1:13109>*8]).outputs([<gregtech:meta_item_1:32001>]).buildAndRegister();
    gt.alloy_smelter.recipeBuilder().duration(4800).EUt(256).notConsumable(<gregtech:meta_item_1:32304>).inputs([<gregtech:meta_item_1:13062>*8]).outputs([<gregtech:meta_item_1:32002>]).buildAndRegister();
    gt.alloy_smelter.recipeBuilder().duration(4800).EUt(1024).notConsumable(<gregtech:meta_item_1:32304>).inputs([<gregtech:meta_item_1:13026>*8]).outputs([<gregtech:meta_item_1:32003>]).buildAndRegister();
    gt.alloy_smelter.recipeBuilder().duration(4800).EUt(4096).notConsumable(<gregtech:meta_item_1:32304>).inputs([<gregtech:meta_item_1:13051>*8]).outputs([<gregtech:meta_item_1:32004>]).buildAndRegister();
    gt.alloy_smelter.recipeBuilder().duration(4800).EUt(16384).notConsumable(<gregtech:meta_item_1:32304>).inputs([<gregtech:meta_item_1:13047>*8]).outputs([<gregtech:meta_item_1:32005>]).buildAndRegister();
    gt.alloy_smelter.recipeBuilder().duration(4800).EUt(65536).notConsumable(<gregtech:meta_item_1:32304>).inputs([<gregtech:meta_item_1:13307>*8]).outputs([<gregtech:meta_item_1:32006>]).buildAndRegister();
    gt.alloy_smelter.recipeBuilder().duration(4800).EUt(262144).notConsumable(<gregtech:meta_item_1:32304>).inputs([<gregtech:meta_item_1:13993>*8]).outputs([<gregtech:meta_item_1:32007>]).buildAndRegister();

    // Fix recipe conflict
    gt.chemical_reactor.findRecipe(30, [null], [<liquid:ammonia> * 1000, <liquid:hypochlorous_acid> * 1000]).remove();
    gt.alloy_smelter.recipeBuilder()
        .fluidInputs([<liquid:ammonia> * 1000, <liquid:hypochlorous_acid> * 1000])
        .notConsumable(gt.getCirc(1))
        .fluidOutputs([<liquid:water> * 1000, <liquid:chloramine> * 1000])
        .duration(sec(8)).EUt(30)
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
