// Quartz glass.
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy_smelter.recipeBuilder()
    .inputs(<ore:dustNetherQuartz>)
    .inputs(<ore:blockGlassColorless>)
    .outputs(<appliedenergistics2:quartz_glass>)
    .duration(20)
    .EUt(8)
    .buildAndRegister();

// Vibrant Quartz Glass.
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
alloy_smelter.recipeBuilder()
    .inputs(<appliedenergistics2:quartz_glass>)
    .inputs(<ore:dustGlowstone>*2)
    .outputs(<appliedenergistics2:quartz_vibrant_glass>)
    .duration(20)
    .EUt(30)
    .buildAndRegister();

// Quartz fiber.
recipes.remove(<appliedenergistics2:part:140>);
autoclave.recipeBuilder()
    .inputs(<ore:dustNetherQuartz>)
    .fluidInputs(<liquid:silicon>*72)
    .outputs(<appliedenergistics2:part:140>)
    .duration(1200)
    .EUt(8)
    .buildAndRegister();

// Glass cable fluix.
recipes.remove(<appliedenergistics2:part:16>);
chemreactor.recipeBuilder()
    .inputs(<ore:crystalFluix>*2)
    .inputs(<appliedenergistics2:part:140>)
    .outputs(<appliedenergistics2:part:16>*4)
    .duration(1000)
    .EUt(4)
    .buildAndRegister();

val ae2part = <appliedenergistics2:part>.definition;
for i in 0 to 16 {
chemical_bath.recipeBuilder()
    .inputs(ae2part.makeStack(i))
    .fluidInputs(<liquid:water>*100)
    .outputs(<appliedenergistics2:part:16>)
    .duration(10)
    .EUt(30)
    .buildAndRegister();
}

// Add Energy acceptor recipe.
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped("Energy acceptor", <appliedenergistics2:energy_acceptor>,
 [[<gregtech:meta_plate:323>,<gregtech:meta_plate:324>,<gregtech:meta_plate:323>],
  [<gregtech:meta_plate:324>,<gregtech:machine:1212>,<gregtech:meta_plate:324>],
  [<gregtech:meta_plate:323>,<gregtech:meta_plate:324>,<gregtech:meta_plate:323>]]);

// Add Interface and Molecular assembler recipe.
recipes.remove(<appliedenergistics2:interface>);
recipes.remove(<appliedenergistics2:molecular_assembler>);

recipes.addShaped("Interface", <appliedenergistics2:interface>,
 [[<gregtech:meta_plate:113>,<gregtech:meta_plate:113>,<gregtech:meta_plate:113>],
  [<appliedenergistics2:material:44>,<metaitem:robot.arm.hv>,<appliedenergistics2:material:43>],
  [<gregtech:meta_plate:113>,<gregtech:meta_plate:113>,<gregtech:meta_plate:113>]]);

recipes.addShapeless("Interface2", <appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);

recipes.addShaped("Molecular assembler", <appliedenergistics2:molecular_assembler>,
 [[<gregtech:meta_plate:113>,<appliedenergistics2:material:22>,<gregtech:meta_plate:113>],
  [<gregtech:meta_plate:113>,<metaitem:cover.crafting>,<gregtech:meta_plate:113>],
  [<gregtech:meta_plate:113>,<appliedenergistics2:material:23>,<gregtech:meta_plate:113>]]);


//Add ME Quantum Ring recipe
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped("Quantum Ring", <appliedenergistics2:quantum_ring>,
 [[<ore:plateTungstenSteel>,<appliedenergistics2:material:22>,<ore:plateTungstenSteel>],
  [<appliedenergistics2:material:24>,<appliedenergistics2:dense_energy_cell>,<ore:circuitIv>],
  [<ore:plateTungstenSteel>,<appliedenergistics2:material:22>,<ore:plateTungstenSteel>]]);

//Add ME Quantum link chamber recipe
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped("quantum_link", <appliedenergistics2:quantum_link>,
 [[<ore:plateTungstenSteel>,<appliedenergistics2:material:22>,<ore:plateTungstenSteel>],
  [<appliedenergistics2:material:24>,<metaitem:hull.iv>,<ore:circuitIv>],
  [<ore:plateTungstenSteel>,<appliedenergistics2:material:22>,<ore:plateTungstenSteel>]]);


// Energy cell recipe.
recipes.remove(<appliedenergistics2:energy_cell>);
recipes.addShaped("energy_cell", <appliedenergistics2:energy_cell>,
 [[<ore:plateAluminium>,<ore:batteryMv>,<ore:plateAluminium>],
  [<ore:batteryMv>,<metaitem:battery_buffer.mv.4>,<ore:batteryMv>],
  [<ore:plateAluminium>,<ore:batteryMv>,<ore:plateAluminium>]]);

// Dense energy cell recipe.
recipes.remove(<appliedenergistics2:dense_energy_cell>);
recipes.addShaped("dense_energy_cell", <appliedenergistics2:dense_energy_cell>,
 [[<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>],
  [<appliedenergistics2:energy_cell>,<metaitem:hull.hv>,<appliedenergistics2:energy_cell>],
  [<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>]]);

//Add Creative energy cell recipe
assembly_line.recipeBuilder()
    .inputs(<ore:circuitUhv>*10)
    .inputs(<gregtech:meta_item_1:606>*64)
    .inputs(<gregtech:meta_item_1:606>*64)
    .inputs(<gregtech:meta_item_1:606>*64)
    .inputs(<gregtech:meta_item_1:606>*64)
    .inputs(<gregtech:meta_wire_fine:431>*64)
    .inputs(<gregtech:meta_wire_fine:431>*64)
    .inputs(<gregtech:meta_wire_fine:431>*64)
    .inputs(<gregtech:meta_wire_fine:431>*64)
    .inputs(<gregtech:meta_wire_fine:431>*64)
    .inputs(<gregtech:meta_wire_fine:431>*64)
    .inputs(<ore:circuitUv>*20)
    .inputs(<ore:circuitZpm>*60)
    .inputs(<gregtech:meta_item_1:209>*5)
    .fluidInputs(<liquid:neutronium>*576)
    .fluidInputs(<liquid:stainless_steel>*1152)
    .outputs(<appliedenergistics2:creative_energy_cell>)
    .duration(35000)
    .EUt(2097152)
    .buildAndRegister();


// Matter condenser.
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped("condenser", <appliedenergistics2:condenser>,
 [[<ore:plateStainlessSteel>,<appliedenergistics2:fluix_block>,<ore:plateStainlessSteel>],
  [<appliedenergistics2:fluix_block>,<metaitem:implosion_compressor>,<appliedenergistics2:fluix_block>],
  [<ore:plateStainlessSteel>,<appliedenergistics2:fluix_block>,<ore:plateStainlessSteel>]]);

// ME IO port.
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped("io_port", <appliedenergistics2:io_port>,
 [[<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],
  [<appliedenergistics2:drive>,<appliedenergistics2:part:16>,<appliedenergistics2:drive>],
  [<ore:plateStainlessSteel>,<appliedenergistics2:material:22>,<ore:plateStainlessSteel>]]);
