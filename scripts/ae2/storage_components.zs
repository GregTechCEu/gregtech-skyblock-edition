import crafttweaker.item.IItemStack;

// Storage housing.
recipes.remove(<appliedenergistics2:material:39>);
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>*5)
    .inputs(<appliedenergistics2:part:16>*2)
    .inputs(<appliedenergistics2:quartz_glass>*2)
    .fluidInputs(<liquid:plastic>*144)
    .outputs(<appliedenergistics2:material:39>)
    .duration(20)
    .EUt(100)
    .buildAndRegister();

// Add Storage components recipes
recipes.remove(<appliedenergistics2:material:35>);
recipes.remove(<appliedenergistics2:material:36>);
recipes.remove(<appliedenergistics2:material:37>);
recipes.remove(<appliedenergistics2:material:38>);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_plate:214>*4)
    .inputs(<gregtech:machine:1628>)
    .inputs(<ore:circuitLv>*5)
    .fluidInputs(<liquid:plastic>*576)
    .outputs(<appliedenergistics2:material:35>*2)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:circuitMv>*4)
    .inputs(<appliedenergistics2:material:35>*3)
    .outputs(<appliedenergistics2:material:36>)
    .duration(500)
    .EUt(128)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:circuitHv>*4)
    .inputs(<appliedenergistics2:material:36>*3)
    .outputs(<appliedenergistics2:material:37>)
    .duration(800)
    .EUt(128)
    .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<ore:circuitEv>*4)
  .inputs(<appliedenergistics2:material:37>*3)
  .outputs(<appliedenergistics2:material:38>)
  .duration(500)
  .EUt(510)
  .buildAndRegister();

// Add Fluid storage components recipes.
recipes.remove(<appliedenergistics2:material:54>);
recipes.remove(<appliedenergistics2:material:55>);
recipes.remove(<appliedenergistics2:material:56>);
recipes.remove(<appliedenergistics2:material:57>);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_plate:214>*4)
    .inputs(<gregtech:machine:1613>)
    .inputs(<ore:circuitLv>*5)
    .fluidInputs(<liquid:plastic>*576)
    .outputs(<appliedenergistics2:material:54>*2)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:circuitMv>*4)
    .inputs(<appliedenergistics2:material:54>*3)
    .outputs(<appliedenergistics2:material:55>)
    .duration(500)
    .EUt(128)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:circuitHv>*4)
    .inputs(<appliedenergistics2:material:55>*3)
    .outputs(<appliedenergistics2:material:56>)
    .duration(800)
    .EUt(128)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:circuitEv>*4)
    .inputs(<appliedenergistics2:material:56>*3)
    .outputs(<appliedenergistics2:material:57>)
    .duration(500)
    .EUt(510)
    .buildAndRegister();


// Storage cell canning.
val aematerial = <appliedenergistics2:material>.definition;
val parts = [32,33,34,35,36,37,38,54,55,56,57,0,1] as int[];
val crafted = [
    <appliedenergistics2:spatial_storage_cell_2_cubed>,
    <appliedenergistics2:spatial_storage_cell_16_cubed>,
    <appliedenergistics2:spatial_storage_cell_128_cubed>,
    <appliedenergistics2:storage_cell_1k>,
    <appliedenergistics2:storage_cell_4k>,
    <appliedenergistics2:storage_cell_16k>,
    <appliedenergistics2:storage_cell_64k>,
    <appliedenergistics2:fluid_storage_cell_1k>,
    <appliedenergistics2:fluid_storage_cell_4k>,
    <appliedenergistics2:fluid_storage_cell_16k>,
    <appliedenergistics2:fluid_storage_cell_64k>,
    <appliedenergistics2:view_cell>,
    <appliedenergistics2:view_cell>
] as IItemStack[];
for i in 0 to 13 {
    recipes.remove(crafted[i]);
    canner.recipeBuilder()
        .inputs(<appliedenergistics2:material:39>)
        .inputs(aematerial.makeStack(parts[i]))
        .outputs(crafted[i])
        .duration(20)
        .EUt(30)
        .buildAndRegister();
}

