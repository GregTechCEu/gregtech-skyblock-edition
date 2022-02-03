import mods.exnihilocreatio.Sieve;


// Make Cocoa Beans and Prismarine obtainable from Sand.
var cocoa_beans = <minecraft:dye:3>;
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
var crushed_endstone = <exnihilocreatio:block_endstone_crushed>;

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
