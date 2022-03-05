// Witchwater to recycle (unused) Ancient Spores.
chemreactor.recipeBuilder()
    .circuit(1)
    .inputs(ancient_spores*1)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:witchwater>*1000)
    .duration(200)
    .EUt(7)
    .buildAndRegister();
