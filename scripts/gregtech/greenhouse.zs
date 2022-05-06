import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

global greenhouse as RecipeMap = FactoryRecipeMap.start("greenhouse")
       .minInputs(2)
       .maxInputs(3)
       .maxFluidInputs(1)
       .minOutputs(1)
       .maxOutputs(4)
       .maxFluidOutputs(0)
       .build();

Builder.start("greenhouse", 32000)
       .withPattern(function(controller as IControllerTile) as IBlockPattern {
       return FactoryBlockPattern.start()
              .aisle(" CCC ", " CCC ", " CCC ", " CCC ", " CCC ")
              .aisle("CCCCC", "CDDDC", "C###C", "C###C", "CGGGC")
              .aisle("CCCCC", "CDDDC", "C###C", "C###C", "CGGGC")
              .aisle("CCCCC", "CDDDC", "C###C", "C###C", "CGGGC")
              .aisle(" CCC ", " CSC ", " CCC ", " CCC ", " CCC ")
              .where("C", CTPredicate.states(<metastate:gregtech:machine_casing:0>).setMinGlobalLimited(63) | controller.autoAbilities())
              .where("S", controller.self())
              .where("D", CTPredicate.states(<blockstate:minecraft:dirt>))
              .where("#", CTPredicate.getAir())
              .where("G", CTPredicate.states(<metastate:gregtech:transparent_casing>))
              .build();
       } as IPatternBuilderFunction)
       .withRecipeMap(greenhouse)
       .withBaseTexture(<metastate:gregtech:machine_casing:0>)
       .buildAndRegister();

recipes.addShaped("greenhouse", <metaitem:multiblocktweaker:greenhouse>,
 [[<ore:circuitMv>, <metaitem:robot.arm.mv>, <ore:circuitMv>],
  [<metaitem:electric.piston.mv>, <metaitem:hull.mv>, <metaitem:electric.piston.mv>],
  [<metaitem:cableGtSingleAnnealedCopper>, <metaitem:electric.motor.mv>, <metaitem:cableGtSingleAnnealedCopper>]]);

//Recipes

var saplings = [
    <minecraft:sapling>,
    <minecraft:sapling:1>,
    <minecraft:sapling:2>,
    <minecraft:sapling:3>,
    <minecraft:sapling:4>,
    <minecraft:sapling:5>
] as IItemStack[];

var logs = [
    <minecraft:log> * 64,
    <minecraft:log:1> * 64,
    <minecraft:log:2> * 64,
    <minecraft:log:3> * 64,
    <minecraft:log2> * 64,
    <minecraft:log2:1> * 64
] as IItemStack[];

for i, sapling in saplings {
    greenhouse.recipeBuilder()
        .circuit(1)
        .notConsumable(sapling)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(logs[i])
        .outputs(sapling.withAmount(6))
        .duration(1200)
        .EUt(40)
        .buildAndRegister();

    greenhouse.recipeBuilder()
        .circuit(2)
        .notConsumable(sapling)
        .inputs(<gregtech:meta_item_1:1001> * 12)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(logs[i])
        .outputs(logs[i])
        .outputs(sapling.withAmount(12))
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}

var seeds = [
    <minecraft:pumpkin_seeds>,
    <minecraft:beetroot_seeds>,
    <minecraft:wheat_seeds>,
    <minecraft:melon_seeds>,
    <minecraft:carrot>,
    <minecraft:potato>,
    <minecraft:reeds>,
    <minecraft:cactus>,
    <minecraft:brown_mushroom>,
    <minecraft:red_mushroom>,
    <minecraft:nether_wart>
] as IItemStack[];

var plants = [
    <minecraft:pumpkin> * 6,
    <minecraft:beetroot> * 16,
    <minecraft:wheat> * 16,
    <minecraft:melon_block> * 6,
    <minecraft:carrot> * 12,
    <minecraft:potato> * 12,
    <minecraft:reeds> * 12,
    <minecraft:cactus> * 12,
    <minecraft:brown_mushroom> * 12,
    <minecraft:red_mushroom> * 12,
    <minecraft:nether_wart> * 12
] as IItemStack[];

for i, seed in seeds {
    greenhouse.recipeBuilder()
        .circuit(1)
        .notConsumable(seed)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(plants[i])
        .duration(1200)
        .EUt(40)
        .buildAndRegister();

    greenhouse.recipeBuilder()
        .circuit(2)
        .notConsumable(seed)
        .inputs(<gregtech:meta_item_1:1001> * 12)
        .fluidInputs([<liquid:water> * 1000])
        .outputs(plants[i].withAmount(plants[i].amount * 2))
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}
