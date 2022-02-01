import crafttweaker.item.IItemStack;
import mods.exnihilocreatio.Sieve;

var cocoa_beans = <minecraft:dye:3>;

var crushed_endstone = <exnihilocreatio:block_endstone_crushed>;

var string_mesh = <exnihilocreatio:item_mesh:1>;

// Add Wood Recipes.
var saplings = [
    <minecraft:sapling>,
    <minecraft:sapling:1>,
    <minecraft:sapling:2>,
    <minecraft:sapling:3>,
    <minecraft:sapling:4>,
    <minecraft:sapling:5>,
    <gregtech:rubber_sapling>
] as IItemStack[];

var logs = [
    <minecraft:log> * 64,
    <minecraft:log:1> * 64,
    <minecraft:log:2> * 64,
    <minecraft:log:3> * 64,
    <minecraft:log2> * 64,
    <minecraft:log2:1> * 64,
    <gregtech:rubber_log> * 64
] as IItemStack[];

for i, sapling in saplings {
    chemreactor.recipeBuilder()
        .notConsumable(sapling)
        .fluidInputs(<liquid:water>*1000)
        .outputs(logs[i])
        .outputs(logs[i])
        .duration(1200)
        .EUt(16)
        .buildAndRegister();
}

// Add Mushroom recipe to Chemical Reactor.
var mushrooms = [
    <minecraft:brown_mushroom>,
    <minecraft:red_mushroom>
] as IItemStack[];
for mushroom in mushrooms {
    chemreactor.recipeBuilder()
        .notConsumable(mushroom*1)
        .fluidInputs(<liquid:witchwater>*1000)
        .outputs(mushroom*5)
        .duration(500)
        .EUt(8)
        .buildAndRegister();
}


// Flint from gravel recipe.
recipes.addShaped("flint_from_gravel", <minecraft:flint>,
 [[<minecraft:gravel>,<minecraft:gravel>,null],
  [<minecraft:gravel>,null,null],
  [null,null,null]]);


// Breab... from flour...
furnace.addRecipe(<minecraft:bread>, <ore:dustWheat>);


// Make Cocoa Beans and Prismarine obtainable from Sand.
Sieve.addStringMeshRecipe(<ore:sand>, cocoa_beans, 0.035);
Sieve.addStringMeshRecipe(<ore:sand>, <minecraft:prismarine_shard>, 0.11);

electric_sieve.recipeBuilder()
    .notConsumable(string_mesh*1)
    .inputs(<ore:sand>*1)
    .chancedOutput(cocoa_beans*1, 500, 500)
    .chancedOutput(<minecraft:prismarine_shard>*1, 2000, 500)
    .EUt(4)
    .duration(100)
    .buildAndRegister();

forge_hammer.recipeBuilder()
    .inputs(<minecraft:prismarine_shard>*1)
    .outputs(<minecraft:prismarine_crystals>*2)
    .duration(20)
    .EUt(16)
    .buildAndRegister();

// Make Chorus obtainable from Endstone.
Sieve.addStringMeshRecipe(crushed_endstone, <minecraft:chorus_fruit>,  0.256);
Sieve.addStringMeshRecipe(crushed_endstone, <minecraft:chorus_flower>, 0.0146);

electric_sieve.recipeBuilder()
    .notConsumable(string_mesh*1)
    .inputs(crushed_endstone*1)
    .chancedOutput(<minecraft:chorus_fruit>*1, 3560, 500)
    .chancedOutput(<minecraft:chorus_flower>*1, 500, 500)
    .EUt(4)
    .duration(100)
    .buildAndRegister();
