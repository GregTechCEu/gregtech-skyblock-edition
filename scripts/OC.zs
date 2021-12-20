//Add Transistor recipe
recipes.remove(<opencomputers:material:6>);

assembler.recipeBuilder()
    .inputs(<minecraft:redstone>*3)
	.inputs(<gregtech:meta_plate:355>*2)
    .fluidInputs(<liquid:plastic>*288)
	.outputs(<opencomputers:material:6>)
	.duration(200)
	.EUt(128)
	.buildAndRegister();