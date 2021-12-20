import mods.exnihilocreatio.Sieve;

//Skystone Dust
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <appliedenergistics2:material:45>, 0.054);

//Add Inscriber presses recipe
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
   .inputs(<gregtech:meta_block_compressed_20:15>)
   .notConsumable(<gregtech:meta_lens:276>)
   .outputs(<appliedenergistics2:material:13>)
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

//Add Printed circuit recipes
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
   
//Add Processor recipes
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
   
//Add Energy acceptor recipes
recipes.remove(<appliedenergistics2:energy_acceptor>);

recipes.addShaped("Energy acceptor", <appliedenergistics2:energy_acceptor>,
 [[<gregtech:meta_plate:323>,<gregtech:meta_plate:324>,<gregtech:meta_plate:323>],
  [<gregtech:meta_plate:324>,<gregtech:machine:1212>,<gregtech:meta_plate:324>],
  [<gregtech:meta_plate:323>,<gregtech:meta_plate:324>,<gregtech:meta_plate:323>]]);
//Add Interface and Molecular assembler recipe
recipes.remove(<appliedenergistics2:interface>);
recipes.remove(<appliedenergistics2:molecular_assembler>);

recipes.addShaped("Interface", <appliedenergistics2:interface>,
 [[<gregtech:meta_plate:113>,<gregtech:meta_plate:113>,<gregtech:meta_plate:113>],
  [<appliedenergistics2:material:44>,<metaitem:robot.arm.hv>,<appliedenergistics2:material:43>],
  [<gregtech:meta_plate:113>,<gregtech:meta_plate:113>,<gregtech:meta_plate:113>]]);

recipes.addShaped("Molecular assembler", <appliedenergistics2:molecular_assembler>,
 [[<gregtech:meta_plate:113>,<appliedenergistics2:material:22>,<gregtech:meta_plate:113>],
  [<gregtech:meta_plate:113>,<metaitem:cover.crafting>,<gregtech:meta_plate:113>],
  [<gregtech:meta_plate:113>,<appliedenergistics2:material:23>,<gregtech:meta_plate:113>]]);

//Add Charged certus recipe
polarizer.recipeBuilder()
   .inputs(<gregtech:meta_gem:214>)
   .outputs(<appliedenergistics2:material:1>)
   .duration(100)
   .EUt(8)
   .buildAndRegister();

//Add Blank pattern recipe
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped("Blank pattern", <appliedenergistics2:material:52>, 
 [[<gregtech:meta_plate:1012>,<gregtech:meta_plate:1012>,<gregtech:meta_plate:1012>],
  [<gregtech:meta_plate:1012>,<ore:circuitAdvanced>,<gregtech:meta_plate:1012>],
  [<gregtech:meta_plate:1012>,null,<gregtech:meta_plate:1012>]]);