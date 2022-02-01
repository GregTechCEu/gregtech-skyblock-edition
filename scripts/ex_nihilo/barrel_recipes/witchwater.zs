// Witchwater from Mycelium.
chemreactor.recipeBuilder()
    .notConsumable(<minecraft:mycelium>*1)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:witchwater>*1000)
    .duration(200)
    .EUt(7)
    .buildAndRegister();

// Witchwater to recycle (unused) Ancient Spores.
chemreactor.recipeBuilder()
    .inputs(ancient_spores*1)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:witchwater>*1000)
    .duration(200)
    .EUt(7)
    .buildAndRegister();
