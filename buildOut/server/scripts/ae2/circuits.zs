// Add Inscriber presses recipe.
engraver.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_6:3>)
    .notConsumable(<gregtech:meta_lens:276>)
    .outputs(<appliedenergistics2:material:19>)
    .duration(600)
    .EUt(128)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_20:15>)
    .notConsumable(<gregtech:meta_lens:276>)
    .outputs(<appliedenergistics2:material:13>)
    .duration(600)
    .EUt(128)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_18:13>)
    .notConsumable(<gregtech:meta_lens:276>)
    .outputs(<appliedenergistics2:material:15>)
    .duration(600)
    .EUt(128)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_0:2>)
    .notConsumable(<gregtech:meta_lens:276>)
    .outputs(<appliedenergistics2:material:14>)
    .duration(600)
    .EUt(128)
    .buildAndRegister();

// Add Printed circuit recipes.
forming_press.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:19>)
    .inputs(<gregtech:meta_ingot:99>)
    .outputs(<appliedenergistics2:material:20>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

forming_press.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:15>)
    .inputs(<minecraft:gold_ingot>)
    .outputs(<appliedenergistics2:material:18>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

forming_press.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:14>)
    .inputs(<minecraft:diamond>)
    .outputs(<appliedenergistics2:material:17>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

forming_press.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:13>)
    .inputs(<gregtech:meta_gem:214>)
    .outputs(<appliedenergistics2:material:16>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

// Add Processor recipes.
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:18>)
    .inputs(<ore:circuitBasic>)
    .inputs(<appliedenergistics2:material:20>)
    .fluidInputs(<liquid:redstone>*576)
    .outputs(<appliedenergistics2:material:22>)
    .duration(500)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:17>)
    .inputs(<ore:circuitBasic>)
    .inputs(<appliedenergistics2:material:20>)
    .fluidInputs(<liquid:redstone>*576)
    .outputs(<appliedenergistics2:material:24>)
    .duration(500)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:16>)
    .inputs(<ore:circuitBasic>)
    .inputs(<appliedenergistics2:material:20>)
    .fluidInputs(<liquid:redstone>*576)
    .outputs(<appliedenergistics2:material:23>)
    .duration(500)
    .EUt(32)
    .buildAndRegister();
