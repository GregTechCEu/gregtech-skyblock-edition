// Mycelium from ancient spores.
chemreactor.recipeBuilder()
    .inputs(<minecraft:dirt>*1)
    .inputs(ancient_spores*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:mycelium>*1)
    .duration(200)
    .EUt(7)
    .buildAndRegister();

// "Growing" mycelium.
chemreactor.recipeBuilder()
    .notConsumable(<minecraft:mycelium>*1)
    .inputs(<minecraft:dirt>*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:mycelium>*1)
    .duration(200)
    .EUt(7)
    .buildAndRegister();


// Grass from seeds.
chemreactor.recipeBuilder()
    .inputs(<minecraft:dirt>*1)
    .inputs(grass_seeds*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:grass>*1)
    .duration(200)
    .EUt(7)
    .buildAndRegister();

// "Growing" grass.
chemreactor.recipeBuilder()
    .notConsumable(<minecraft:grass>*1)
    .inputs(<minecraft:dirt>*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:grass>*1)
    .duration(200)
    .EUt(7)
    .buildAndRegister();
