import mods.exnihilocreatio.Sieve;

// Sky Stone Slock.
mixer.recipeBuilder()
    .inputs(sky_stone_dust*1)
    .fluidInputs(<liquid:lava>*1000)
    .outputs(<appliedenergistics2:sky_stone_block>*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Crushed sky stone.
forge_hammer.recipeBuilder()
    .inputs(sky_stone_block*1)
    .outputs(crushed_sky_stone*1)
    .duration(10)
    .EUt(16)
    .buildAndRegister();


// Sky Stone Dust Sieving (both manually and in electric sieves).
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <appliedenergistics2:material:45>, 0.054);
electric_sieve.recipeBuilder()
    .notConsumable(diamond_mesh*1)
    .inputs(<exnihilocreatio:block_dust>*1)
    .chancedOutput(sky_stone_dust, 1000, 500)
    .EUt(4)
    .duration(100)
    .buildAndRegister();
