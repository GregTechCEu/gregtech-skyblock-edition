// Fixes incompatibilities with thermal and forestry seed oil

// beetroot produces forestry seed oil
fluid_extractor.findRecipe(2, [<minecraft:beetroot_seeds>], [null]).remove();
fluid_extractor.recipeBuilder()
    .inputs(<minecraft:beetroot_seeds>)
    .fluidOutputs([<liquid:seed.oil> * 10])
    .duration(32)
    .EUt(2)
    .buildAndRegister();


// bio diesel fix
chemical_reactor.findRecipe(30, [<ore:dustTinySodiumHydroxide>.firstItem], [<liquid:methanol> * 1000, <liquid:seed_oil> * 6000]).remove();
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustTinySodiumHydroxide>)
    .fluidInputs([<liquid:methanol> * 1000, <liquid:seed.oil> * 6000])
    .fluidOutputs([<liquid:glycerol> * 1000, <liquid:bio_diesel> * 6000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

chemical_reactor.findRecipe(30, [<ore:dustTinySodiumHydroxide>.firstItem], [<liquid:bio.ethanol> * 1000, <liquid:seed_oil> * 6000]).remove();
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustTinySodiumHydroxide>)
    .fluidInputs([<liquid:bio.ethanol> * 1000, <liquid:seed.oil> * 6000])
    .fluidOutputs([<liquid:glycerol> * 1000, <liquid:bio_diesel> * 6000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

large_chemical_reactor.findRecipe(30, [<ore:dustTinySodiumHydroxide>.firstItem], [<liquid:methanol> * 1000, <liquid:seed_oil> * 6000]).remove();
large_chemical_reactor.recipeBuilder()
    .inputs(<ore:dustTinySodiumHydroxide>)
    .fluidInputs([<liquid:methanol> * 1000, <liquid:seed.oil> * 6000])
    .fluidOutputs([<liquid:glycerol> * 1000, <liquid:bio_diesel> * 6000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();

large_chemical_reactor.findRecipe(30, [<ore:dustTinySodiumHydroxide>.firstItem], [<liquid:bio.ethanol> * 1000, <liquid:seed_oil> * 6000]).remove();
large_chemical_reactor.recipeBuilder()
    .inputs(<ore:dustTinySodiumHydroxide>)
    .fluidInputs([<liquid:bio.ethanol> * 1000, <liquid:seed.oil> * 6000])
    .fluidOutputs([<liquid:glycerol> * 1000, <liquid:bio_diesel> * 6000])
    .duration(600)
    .EUt(30)
    .buildAndRegister();


// Soap fix
chemical_reactor.findRecipe(2000, [null], [<liquid:potassium_hydroxide> * 1000, <liquid:steam> * 200, <liquid:seed_oil> * 1000]).remove();
chemical_reactor.recipeBuilder()
    .fluidInputs([<liquid:potassium_hydroxide> * 1000, <liquid:steam> * 200, <liquid:seed.oil> * 1000])
    .fluidOutputs([<liquid:soap> * 1000])
    .duration(160)
    .EUt(2000)
    .buildAndRegister();

large_chemical_reactor.findRecipe(2000, [null], [<liquid:potassium_hydroxide> * 1000, <liquid:steam> * 200, <liquid:seed_oil> * 1000]).remove();
large_chemical_reactor.recipeBuilder()
    .fluidInputs([<liquid:potassium_hydroxide> * 1000, <liquid:steam> * 200, <liquid:seed.oil> * 1000])
    .fluidOutputs([<liquid:soap> * 1000])
    .duration(160)
    .EUt(2000)
    .buildAndRegister();


// Lubricant fix
distillery.findRecipe(24, [<metaitem:circuit.integrated>], [<liquid:seed_oil> * 24]).remove();
distillery.recipeBuilder()
    .fluidInputs([<liquid:seed.oil> * 24])
    .circuit(0)
    .fluidOutputs([<liquid:lubricant> * 12])
    .duration(32)
    .EUt(24)
    .buildAndRegister();

distillation_tower.findRecipe(96, [null], [<liquid:seed_oil> * 24]).remove();
distillation_tower.recipeBuilder()
    .fluidInputs([<liquid:seed.oil> * 24])
    .fluidOutputs([<liquid:lubricant> * 12])
    .duration(16)
    .EUt(96)
    .buildAndRegister();

mixer.findRecipe(4, [<ore:dustTalc>.firstItem], [<liquid:seed_oil> * 750]).remove();
mixer.recipeBuilder()
    .inputs(<ore:dustTalc>)
    .fluidInputs([<liquid:seed.oil> * 750])
    .fluidOutputs([<liquid:lubricant> * 750])
    .duration(128)
    .EUt(4)
    .buildAndRegister();

mixer.findRecipe(4, [<ore:dustSoapstone>.firstItem], [<liquid:seed_oil> * 750]).remove();
mixer.recipeBuilder()
    .inputs(<ore:dustSoapstone>)
    .fluidInputs([<liquid:seed.oil> * 750])
    .fluidOutputs([<liquid:lubricant> * 750])
    .duration(128)
    .EUt(4)
    .buildAndRegister();

mixer.findRecipe(4, [<ore:dustRedstone>.firstItem], [<liquid:seed_oil> * 750]).remove();
mixer.recipeBuilder()
    .inputs(<ore:dustRedstone>)
    .fluidInputs([<liquid:seed.oil> * 750])
    .fluidOutputs([<liquid:lubricant> * 750])
    .duration(128)
    .EUt(4)
    .buildAndRegister();

// large_mixer.findRecipe(4, [<ore:dustTalc>.firstItem, <metaitem:circuit.integrated>], [<liquid:seed_oil> * 750]).remove();
large_mixer.recipeBuilder()
    .inputs([<ore:dustTalc>, <metaitem:circuit.integrated>.withTag({Configuration: 2})])
    .fluidInputs([<liquid:seed.oil> * 750])
    .fluidOutputs([<liquid:lubricant> * 750])
    .duration(128)
    .EUt(4)
    .buildAndRegister();

// large_mixer.findRecipe(4, [<ore:dustSoapstone>.firstItem, <metaitem:circuit.integrated>], [<liquid:seed_oil> * 750]).remove();
large_mixer.recipeBuilder()
    .inputs([<ore:dustSoapstone>, <metaitem:circuit.integrated>.withTag({Configuration: 2})])
    .fluidInputs([<liquid:seed.oil> * 750])
    .fluidOutputs([<liquid:lubricant> * 750])
    .duration(128)
    .EUt(4)
    .buildAndRegister();

// large_mixer.findRecipe(4, [<ore:dustRedstone>.firstItem, <metaitem:circuit.integrated>], [<liquid:seed_oil> * 750]).remove();
large_mixer.recipeBuilder()
    .inputs([<ore:dustRedstone>, <metaitem:circuit.integrated>.withTag({Configuration: 2})])
    .fluidInputs([<liquid:seed.oil> * 750])
    .fluidOutputs([<liquid:lubricant> * 750])
    .duration(128)
    .EUt(4)
    .buildAndRegister();
