import mods.exnihilocreatio.Sieve;
import crafttweaker.item.IItemStack;

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
   
//Add Energy acceptor recipe
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
mods.jei.JEI.removeAndHide(<appliedenergistics2:charger>);
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

//Add Storage components recipes

recipes.remove(<appliedenergistics2:material:35>);
recipes.remove(<appliedenergistics2:material:36>);
recipes.remove(<appliedenergistics2:material:37>);
recipes.remove(<appliedenergistics2:material:38>);

assembler.recipeBuilder()
  .inputs(<gregtech:meta_plate:214>*4)
  .inputs(<gregtech:machine:1628>)
  .inputs(<ore:circuitBasic>*5)
  .fluidInputs(<liquid:plastic>*576)
  .outputs(<appliedenergistics2:material:35>*2)
  .duration(200)
  .EUt(100)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<ore:circuitGood>*4)
  .inputs(<appliedenergistics2:material:35>*3)
  .outputs(<appliedenergistics2:material:36>)
  .duration(500)
  .EUt(128)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<ore:circuitAdvanced>*4)
  .inputs(<appliedenergistics2:material:36>*3)
  .outputs(<appliedenergistics2:material:37>)
  .duration(800)
  .EUt(128)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<ore:circuitExtreme>*4)
  .inputs(<appliedenergistics2:material:37>*3)
  .outputs(<appliedenergistics2:material:38>)
  .duration(500)
  .EUt(510)
  .buildAndRegister();

//Add Fluid storage components recipes
recipes.remove(<appliedenergistics2:material:54>);
recipes.remove(<appliedenergistics2:material:55>);
recipes.remove(<appliedenergistics2:material:56>);
recipes.remove(<appliedenergistics2:material:57>);

assembler.recipeBuilder()
  .inputs(<gregtech:meta_plate:214>*4)
  .inputs(<gregtech:machine:1613>)
  .inputs(<ore:circuitBasic>*5)
  .fluidInputs(<liquid:plastic>*576)
  .outputs(<appliedenergistics2:material:54>*2)
  .duration(200)
  .EUt(100)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<ore:circuitGood>*4)
  .inputs(<appliedenergistics2:material:54>*3)
  .outputs(<appliedenergistics2:material:55>)
  .duration(500)
  .EUt(128)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<ore:circuitAdvanced>*4)
  .inputs(<appliedenergistics2:material:55>*3)
  .outputs(<appliedenergistics2:material:56>)
  .duration(800)
  .EUt(128)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs(<ore:circuitExtreme>*4)
  .inputs(<appliedenergistics2:material:56>*3)
  .outputs(<appliedenergistics2:material:57>)
  .duration(500)
  .EUt(510)
  .buildAndRegister();

//Add Fluix dust recipe

macerator.recipeBuilder()
  .inputs(<appliedenergistics2:material:7>)
  .outputs(<appliedenergistics2:material:8>)
  .duration(100)
  .EUt(16)
  .buildAndRegister();

//Add ME Quantum Ring recipe
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped("Quantum Ring", <appliedenergistics2:quantum_ring>,
 [[<ore:plateTungstenSteel>,<appliedenergistics2:material:22>,<ore:plateTungstenSteel>],
  [<appliedenergistics2:material:24>,<appliedenergistics2:dense_energy_cell>,<ore:circuitElite>],
  [<ore:plateTungstenSteel>,<appliedenergistics2:material:22>,<ore:plateTungstenSteel>]]);

//Add ME Quantum link chamber recipe
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped("quantum_link", <appliedenergistics2:quantum_link>,
 [[<ore:plateTungstenSteel>,<appliedenergistics2:material:22>,<ore:plateTungstenSteel>],
  [<appliedenergistics2:material:24>,<metaitem:hull.iv>,<ore:circuitElite>],
  [<ore:plateTungstenSteel>,<appliedenergistics2:material:22>,<ore:plateTungstenSteel>]]);

//Add Creative energy cell recipe
assembly_line.recipeBuilder()
  .inputs(<ore:circuitInfinite>*10)
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
  .inputs(<ore:circuitSuper>*20)
  .inputs(<ore:circuitUltimate>*60)
  .inputs(<gregtech:meta_item_1:209>*5)
  .fluidInputs(<liquid:neutronium>*576)
  .fluidInputs(<liquid:stainless_steel>*1152)
  .outputs(<appliedenergistics2:creative_energy_cell>)
  .duration(35000)
  .EUt(2097152)
  .buildAndRegister();

//hide gold-dust; iron dust; silicon; Flour; nether quartz dust; certus quartz dust; ender dust
val aematerial = <appliedenergistics2:material>.definition;
val matstoremove = [5,49,51,4,3,2,46] as int[];

for i in matstoremove {
mods.jei.JEI.hide(aematerial.makeStack(i));
}

//quartz glass
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy_smelter.recipeBuilder()
	.inputs(<ore:dustNetherQuartz>)
	.inputs(<ore:blockGlassColorless>)
	.outputs(<appliedenergistics2:quartz_glass>)
	.duration(20)
	.EUt(8)
	.buildAndRegister();

//vibrant quartz_glass
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
alloy_smelter.recipeBuilder()
	.inputs(<appliedenergistics2:quartz_glass>)
	.inputs(<ore:dustGlowstone>*2)
	.outputs(<appliedenergistics2:quartz_vibrant_glass>)
	.duration(20)
	.EUt(30)
	.buildAndRegister();

//fluix crystal
chemreactor.recipeBuilder()
	.inputs(<appliedenergistics2:material:1>)
	.inputs(<ore:gemNetherQuartz>)
	.fluidInputs(<liquid:redstone>*72)
	.outputs(<appliedenergistics2:material:7>*2)
	.duration(20)
	.EUt(60)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<appliedenergistics2:material:1>)
	.inputs(<ore:gemNetherQuartz>)
	.inputs(<ore:dustRedstone>)
	.fluidInputs(<liquid:water>*250)
	.outputs(<appliedenergistics2:material:7>*2)
	.duration(80)
	.EUt(30)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<appliedenergistics2:material:1>)
	.inputs(<ore:gemNetherQuartz>)
	.inputs(<ore:dustRedstone>)
	.fluidInputs(<liquid:distilled_water>*100)
	.outputs(<appliedenergistics2:material:7>*2)
	.duration(40)
	.EUt(30)
	.buildAndRegister();

//energy cell recipe
recipes.remove(<appliedenergistics2:energy_cell>);
recipes.addShaped("energy_cell", <appliedenergistics2:energy_cell>,
 [[<ore:plateAluminium>,<ore:batteryGood>,<ore:plateAluminium>],
  [<ore:batteryGood>,<metaitem:battery_buffer.mv.4>,<ore:batteryGood>],
  [<ore:plateAluminium>,<ore:batteryGood>,<ore:plateAluminium>]]);
 
//energy dense cell recipe
recipes.remove(<appliedenergistics2:dense_energy_cell>);
recipes.addShaped("dense_energy_cell", <appliedenergistics2:dense_energy_cell>,
 [[<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>],
  [<appliedenergistics2:energy_cell>,<metaitem:hull.hv>,<appliedenergistics2:energy_cell>],
  [<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>]]);
  
//crafting unit
recipes.remove(<appliedenergistics2:crafting_unit>);
assembler.recipeBuilder()
	.inputs(<ore:plateStainlessSteel>*4)
	.inputs(<appliedenergistics2:part:16>*4)
	.inputs(<metaitem:hull.hv>)
	.inputs(<appliedenergistics2:material:23>*2)
	.inputs(<appliedenergistics2:material:22>)
	.fluidInputs(<liquid:plastic>*144)
	.outputs(<appliedenergistics2:crafting_unit>)
	.duration(20)
	.EUt(200)
	.buildAndRegister();
	
//glass cable fluix
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
//quartz fiber
recipes.remove(<appliedenergistics2:part:140>);
autoclave.recipeBuilder()
	.inputs(<ore:dustNetherQuartz>)
	.fluidInputs(<liquid:silicon>*72)
	.outputs(<appliedenergistics2:part:140>)
	.duration(1200)
	.EUt(8)
	.buildAndRegister();

//storage housing
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

//storage cell canning
val parts = [32,33,34,35,36,37,38,54,55,56,57,0,1] as int[];
val crafted = [<appliedenergistics2:spatial_storage_cell_2_cubed>,<appliedenergistics2:spatial_storage_cell_16_cubed>,<appliedenergistics2:spatial_storage_cell_128_cubed>,
				<appliedenergistics2:storage_cell_1k>,<appliedenergistics2:storage_cell_4k>,<appliedenergistics2:storage_cell_16k>,<appliedenergistics2:storage_cell_64k>,
				<appliedenergistics2:fluid_storage_cell_1k>,<appliedenergistics2:fluid_storage_cell_4k>,<appliedenergistics2:fluid_storage_cell_16k>,<appliedenergistics2:fluid_storage_cell_64k>,
				<appliedenergistics2:view_cell>,<appliedenergistics2:view_cell>
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

//crafting storage canning
val partss = [54,55,56,57,24] as int[];
val craftedd = [<appliedenergistics2:crafting_storage_1k>,<appliedenergistics2:crafting_storage_4k>,<appliedenergistics2:crafting_storage_16k>,<appliedenergistics2:crafting_storage_64k>,
<appliedenergistics2:crafting_accelerator>
] as IItemStack[];
for i in 0 to 5 {
recipes.remove(craftedd[i]);
canner.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>)
	.inputs(aematerial.makeStack(partss[i]))
	.outputs(craftedd[i])
	.duration(20)
	.EUt(500)
	.buildAndRegister();
}
recipes.remove(<appliedenergistics2:crafting_monitor>);
canner.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>)
	.inputs(<metaitem:cover.screen>)
	.outputs(<appliedenergistics2:crafting_monitor>)
	.duration(20)
	.EUt(500)
	.buildAndRegister();
	
//matter condensor
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped("condenser", <appliedenergistics2:condenser>,
 [[<ore:plateStainlessSteel>,<appliedenergistics2:fluix_block>,<ore:plateStainlessSteel>],
  [<appliedenergistics2:fluix_block>,<metaitem:implosion_compressor>,<appliedenergistics2:fluix_block>],
  [<ore:plateStainlessSteel>,<appliedenergistics2:fluix_block>,<ore:plateStainlessSteel>]]);

//ME IO port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped("io_port", <appliedenergistics2:io_port>,
 [[<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],
  [<appliedenergistics2:drive>,<appliedenergistics2:part:16>,<appliedenergistics2:drive>],
  [<ore:plateStainlessSteel>,<appliedenergistics2:material:22>,<ore:plateStainlessSteel>]]);
  
//Annihilation Core
recipes.remove(<appliedenergistics2:material:44>);
assembler.recipeBuilder()
	.inputs(<ore:gemQuartz>)
	.inputs(<ore:dustFluix>)
	.inputs(<appliedenergistics2:material:22>)
	.outputs(<appliedenergistics2:material:44>)
	.duration(20)
	.EUt(60)
	.buildAndRegister();

//formation Core
recipes.remove(<appliedenergistics2:material:43>);
assembler.recipeBuilder()
	.inputs(<ore:crystalCertusQuartz>)
	.inputs(<ore:dustFluix>)
	.inputs(<appliedenergistics2:material:22>)
	.outputs(<appliedenergistics2:material:43>)
	.duration(20)
	.EUt(60)
	.buildAndRegister();

