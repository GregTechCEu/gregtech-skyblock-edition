import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

val disables = [
    <ore:ballPulsatingIron>.firstItem,
    <ore:ballConductiveIron>.firstItem,
    <ore:ballRedstoneAlloy>.firstItem,
    <ore:ballVibrantAlloy>.firstItem,
    <ore:ballEnergeticAlloy>.firstItem,
    <ore:ballElectricalSteel>.firstItem,
    <ore:ballEndSteel>.firstItem,
    <ore:ballConstructionAlloy>.firstItem,
    <ore:ballSoularium>.firstItem,
    <ore:ballDarkSteel>.firstItem,
    <ore:ballCrudeSteel>.firstItem,
    <ore:ballCrystallineAlloy>.firstItem,
    <ore:ballMelodicAlloy>.firstItem,
    <ore:ballStellarAlloy>.firstItem,
    <ore:ballCrystallinePinkSlime>.firstItem,
    <ore:ballEnergeticSilver>.firstItem,
    <ore:ballVividAlloy>.firstItem,
    <enderio:block_dark_paper_anvil>,
    <enderio:block_dark_paper_anvil:1>,
    <enderio:block_dark_paper_anvil:2>,
    <ore:blockRedstoneAlloy>.firstItem,
    <ore:ingotRedstoneAlloy>.firstItem,
    <ore:nuggetRedstoneAlloy>.firstItem,
    <ore:blockConductiveIron>.firstItem,
    <ore:ingotConductiveIron>.firstItem,
    <ore:nuggetConductiveIron>.firstItem,
    <ore:blockPulsatingIron>.firstItem,
    <ore:ingotPulsatingIron>.firstItem,
    <ore:nuggetPulsatingIron>.firstItem,
    <ore:blockElectricalSteel>.firstItem,
    <ore:ingotElectricalSteel>.firstItem,
    <ore:nuggetElectricalSteel>.firstItem,
    <ore:blockEnergeticAlloy>.firstItem,
    <ore:ingotEnergeticAlloy>.firstItem,
    <ore:nuggetEnergeticAlloy>.firstItem,
    <ore:blockVibrantAlloy>.firstItem,
    <ore:ingotVibrantAlloy>.firstItem,
    <ore:nuggetVibrantAlloy>.firstItem,
    <ore:blockSoularium>.firstItem,
    <ore:ingotSoularium>.firstItem,
    <ore:nuggetSoularium>.firstItem,
    <ore:itemPlatePhotovoltaic>.firstItem,
    <ore:itemGliderWing>.firstItem,
    <ore:itemGliderWings>.firstItem,
    <ore:gearStone>.firstItem,
    <ore:gearIronInfinity>.firstItem,
    <ore:gearEnergized>.firstItem,
    <ore:gearVibrant>.firstItem,
    <ore:dustBedrock>.firstItem,
    <ore:itemPowderPhotovoltaic>.firstItem,
    <ore:blockCrudeSteel>.firstItem,
    <ore:ingotCrudeSteel>.firstItem,
    <ore:nuggetCrudeSteel>.firstItem,
    <ore:blockCrystallineAlloy>.firstItem,
    <ore:ingotCrystallineAlloy>.firstItem,
    <ore:nuggetCrystallineAlloy>.firstItem,
    <ore:blockMelodicAlloy>.firstItem,
    <ore:ingotMelodicAlloy>.firstItem,
    <ore:nuggetMelodicAlloy>.firstItem,
    <ore:blockCrystallinePinkSlime>.firstItem,
    <ore:ingotCrystallinePinkSlime>.firstItem,
    <ore:nuggetCrystallinePinkSlime>.firstItem,
    <ore:blockVividAlloy>.firstItem,
    <ore:ingotVividAlloy>.firstItem,
    <ore:nuggetVividAlloy>.firstItem,
    <enderio:block_cap_bank:1>,
    <enderio:block_cap_bank:2>,
    <enderio:block_cap_bank:3>,
    <enderio:block_gauge>,
    <enderio:item_capacitor_silver>,
    <enderio:block_simple_furnace>,
    <enderio:block_simple_alloy_smelter>,
    <enderio:block_alloy_smelter>,
    <enderio:block_enhanced_alloy_smelter>,
    <enderio:block_buffer:1>,
    <enderio:block_buffer:2>,
    <enderio:block_buffer:3>,
    <enderio:block_combustion_generator>,
    <enderio:block_enhanced_combustion_generator>,
    <enderio:block_simple_stirling_generator>,
    <enderio:block_stirling_generator>,
    <enderio:block_zombie_generator>,
    <enderio:block_franken_zombie_generator>,
    <enderio:block_ender_generator>,
    <enderio:block_lava_generator>,
    <enderio:block_killer_joe>,
    <enderio:block_omni_reservoir>,
    <enderio:block_simple_sag_mill>,
    <enderio:block_sag_mill>,
    <enderio:block_enhanced_sag_mill>,
    <enderio:block_slice_and_splice>,
    <enderio:block_solar_panel>,
    <enderio:block_solar_panel:1>,
    <enderio:block_solar_panel:2>,
    <enderio:block_solar_panel:3>,
    <enderio:block_soul_binder>,
    <enderio:block_powered_spawner>,
    <enderio:block_vat>,
    <enderio:block_enhanced_vat>,
    <enderio:item_basic_capacitor:1>,
    <enderio:item_basic_capacitor:2>,
    <enderio:block_painted_pressure_plate:10>,
    <enderio:block_painted_pressure_plate:11>,
    <enderio:block_painted_pressure_plate:13>,
    <ore:compressed1xDustBedrock>.firstItem,
    <ore:compressed2xDustBedrock>.firstItem,
    <ore:compressed3xDustBedrock>.firstItem,
    <ore:paperBlack>.firstItem,
    <ore:gearDark>.firstItem,
    <ore:dyeMachine>.firstItem,
    <ore:dyeSoulMachine>.firstItem,
    <ore:dyeEnhancedMachine>.firstItem,
    <ore:itemRedstoneFilterBase>.firstItem,
    <enderio:item_capacitor_crystalline>
] as IItemStack[];

for item in disables {
    mods.jei.JEI.hide(item);
}

val deco = <enderio:block_decoration1>.definition as IItemDefinition;
val deco2 = <enderio:block_decoration2>.definition as IItemDefinition;
val deco3 = <enderio:block_decoration3>.definition as IItemDefinition;

for i in 0 to 16 {
    mods.jei.JEI.hide(deco.makeStack(i));
    mods.jei.JEI.hide(deco2.makeStack(i));
}

for i in 0 to 5 {
    mods.jei.JEI.hide(deco3.makeStack(i));
}

mods.tconstruct.Alloy.removeRecipe(<liquid:dark_steel>);



// Construction Alloy
alloy_smelter.recipeBuilder().EUt(30).duration(250)
    .inputs(<ore:dustRegularInvar> * 3, <ore:dustRegularSilver>)
    .outputs(<ore:ingotConstructionAlloy>.firstItem * 4)
    .buildAndRegister();

alloy_smelter.recipeBuilder().EUt(30).duration(250)
    .inputs(<ore:ingotInvar> * 3, <ore:dustRegularSilver>)
    .outputs(<ore:ingotConstructionAlloy>.firstItem * 4)
    .buildAndRegister();

alloy_smelter.recipeBuilder().EUt(30).duration(250)
    .inputs(<ore:dustRegularInvar> * 3, <ore:ingotSilver>)
    .outputs(<ore:ingotConstructionAlloy>.firstItem * 4)
    .buildAndRegister();

alloy_smelter.recipeBuilder().EUt(30).duration(250)
    .inputs(<ore:ingotInvar> * 3, <ore:ingotSilver>)
    .outputs(<ore:ingotConstructionAlloy>.firstItem * 4)
    .buildAndRegister();

// Construction Alloy Block
compressor.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:ingotConstructionAlloy> * 9)
    .outputs(<ore:blockConstructionAlloy>.firstItem)
    .buildAndRegister();

forge_hammer.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:blockConstructionAlloy>)
    .outputs(<ore:ingotConstructionAlloy>.firstItem * 9)
    .buildAndRegister();

large_forge_hammer.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:blockConstructionAlloy>)
    .fluidInputs([<fluid:lubricant> * 2])
    .outputs(<ore:ingotConstructionAlloy>.firstItem * 9)
    .buildAndRegister();

// Simple Chassis Parts
metal_bender.recipeBuilder().EUt(30).duration(200)
    .inputs(<ore:ingotConstructionAlloy> * 16)
    .property("circuit", 0)
    .outputs(<ore:itemSimpleChassiParts>.firstItem * 4)
    .buildAndRegister();

forming_press.recipeBuilder().EUt(480).duration(200)
    .inputs(<ore:ingotConstructionAlloy> * 4)
    .circuit(1)
    .outputs(<ore:itemSimpleChassiParts>.firstItem * 4)
    .buildAndRegister();

// Simple Chassis
assembler.recipeBuilder().EUt(30).duration(400)
    .inputs(<ore:itemSimpleChassiParts> * 4, <ore:frameGtIron>)
    .fluidInputs(soldering_alloys[0] * 144)
    .outputs(<ore:itemSimpleMachineChassi>.firstItem)
    .buildAndRegister();

assembler.recipeBuilder().EUt(30).duration(400)
    .inputs(<ore:itemSimpleChassiParts> * 4, <ore:frameGtIron>)
    .fluidInputs(soldering_alloys[1] * 72)
    .outputs(<ore:itemSimpleMachineChassi>.firstItem)
    .buildAndRegister();

// Industrial Chassis Parts
forming_press.recipeBuilder().EUt(480).duration(200)
    .inputs(<ore:plateBlackSteel> * 16, <ore:plateDarkSteel> * 8)
    .circuit(0)
    .outputs(<ore:itemChassiParts>.firstItem * 4)
    .buildAndRegister();

// Industrial Chassis
assembler.recipeBuilder().EUt(480).duration(400)
    .inputs(<ore:itemChassiParts> * 4, <ore:frameGtStainlessSteel>, <ore:screwBlackBronze> * 4)
    .fluidInputs(soldering_alloys[0] * 144)
    .outputs(<ore:itemMachineChassi>.firstItem)
    .buildAndRegister();

assembler.recipeBuilder().EUt(480).duration(400)
    .inputs(<ore:itemChassiParts> * 4, <ore:frameGtStainlessSteel>, <ore:screwBlackBronze> * 4)
    .fluidInputs(soldering_alloys[1] * 72)
    .outputs(<ore:itemMachineChassi>.firstItem)
    .buildAndRegister();

// Nethercotta
fluid_solidifier.recipeBuilder().EUt(120).duration(100)
    .inputs(<ore:ingotBrickNether>)
    .fluidInputs(<fluid:lava> * 1000)
    .outputs(<ore:ingotBrickNetherGlazed>.firstItem)
    .buildAndRegister();

// Soul Machine Chassis
alloy_smelter.recipeBuilder().EUt(480).duration(400)
    .inputs(<ore:itemMachineChassi>, <ore:ingotBrickNetherGlazed> * 16)
    .outputs(<ore:itemSoulMachineChassi>.firstItem)
    .buildAndRegister();

// End Steel Bars
assembler.recipeBuilder().EUt(16).duration(300)
    .inputs(<ore:stickEndSteel> * 3)
    .property("circuit", 3)
    .outputs(<enderio:block_end_iron_bars> * 4)
    .buildAndRegister();

// Dark Steel Bars
assembler.recipeBuilder().EUt(16).duration(300)
    .inputs(<ore:stickDarkSteel> * 3)
    .property("circuit", 3)
    .outputs(<enderio:block_dark_iron_bars> * 4)
    .buildAndRegister();

// End Steel Chassis
forming_press.recipeBuilder().EUt(1920).duration(400)
    .inputs(<enderio:block_end_iron_bars> * 16, <ore:plateEndSteel> * 4, <ore:itemPulsatingPowder> * 4, <ore:dustRegularNetherQuartz> * 4)
    .outputs(<ore:itemEndSteelMachineChassi>.firstItem)
    .buildAndRegister();

// Enhanced Chassis Components
forming_press.recipeBuilder().EUt(480).duration(400)
    .inputs(<ore:plateStellarAlloy> * 4, tieredPlates[4] * 4, <ore:plateMaragingSteelA> * 8)
    .outputs(<ore:itemEnhancedChassiParts>.firstItem * 4)
    .buildAndRegister();

// Enhanced Chassis
assembler.recipeBuilder().EUt(1920).duration(200)
    .inputs(<ore:itemEndSteelMachineChassi>, <ore:itemEnhancedChassiParts> * 4, <ore:screwTitanium> * 8)
    .fluidInputs(soldering_alloys[0] * 144)
    .outputs(<ore:itemEnhancedMachineChassi>.firstItem)
    .buildAndRegister();

assembler.recipeBuilder().EUt(1920).duration(200)
    .inputs(<ore:itemEndSteelMachineChassi>, <ore:itemEnhancedChassiParts> * 4, <ore:screwTitanium> * 8)
    .fluidInputs(soldering_alloys[1] * 72)
    .outputs(<ore:itemEnhancedMachineChassi>.firstItem)
    .buildAndRegister();

// Industrial Insulation
forming_press.recipeBuilder().EUt(2048).duration(100)
    .inputs(<metaitem:carbon.fibers> * 4, <metaitem:memory_foam_block> * 2, <metaitem:mica_insulator_foil> * 8, <ore:foilTinAlloy> * 4)
    .outputs(<enderio:block_industrial_insulation>)
    .buildAndRegister();

// Soulless Machine Chassis
assembler.recipeBuilder().EUt(7680).duration(100)
    .inputs(<ore:itemEnhancedMachineChassi>, <ore:screwNaquadahAlloy> * 4, <ore:stickLongTungstenSteel> * 4, <enderio:block_industrial_insulation> * 8)
    .fluidInputs(soldering_alloys[0] * 144)
    .outputs(<ore:itemUnsouledMachineChassi>.firstItem)
    .buildAndRegister();

assembler.recipeBuilder().EUt(7680).duration(100)
    .inputs(<ore:itemEnhancedMachineChassi>, <ore:screwNaquadahAlloy> * 4, <ore:stickLongTungstenSteel> * 4, <enderio:block_industrial_insulation> * 8)
    .fluidInputs(soldering_alloys[1] * 72)
    .outputs(<ore:itemUnsouledMachineChassi>.firstItem)
    .buildAndRegister();

// Portable Tank
recipes.addShaped("eio_tank", <enderio:block_tank>, [[tieredPlates[0], tieredPlates[0], tieredPlates[0]],[tieredGlass[3], <ore:itemSimpleMachineChassi>, tieredGlass[3]],[tieredPlates[0], tieredPlates[0], tieredPlates[0]]]);

// Simple Crafter
recipes.addShaped("eio_simple_crafter", <enderio:block_simple_crafter>, [[tieredPlates[0], <meta_tile_entity:gregtech:workbench>, tieredPlates[0]],[<ore:gregWrenches>, <ore:itemSimpleMachineChassi>, <ore:gregScrewDrivers>],[<ore:gearStone>, circuits[1], <ore:gearStone>]]);

arc_furnace.recipeBuilder().EUt(30).duration(400)
    .inputs(<enderio:block_tank>)
    .outputs(<metaitem:ingotWroughtIron> * 6, <ore:ingotConstructionAlloy>.firstItem * 4)
    .buildAndRegister();

// Crafter
recipes.addShaped("eio_crafter", <enderio:block_crafter>, [[<ore:plateDarkSteel>, <ore:craftingTableWood>, <ore:plateDarkSteel>], [robotArms[2], <ore:itemMachineChassi>, robotArms[2]], [<ore:gearWood>, circuits[2], <ore:gearWood>]]);

// Simple Crafter Disassembly
disassembler.recipeBuilder().EUt(32).duration(1200)
    .inputs(<enderio:block_simple_crafter>)
    .outputs(<metaitem:plateWroughtIron>, <metaitem:dustTinyAsh>, <metaitem:plateWroughtIron>, <metaitem:dustTinyAsh>, <ore:itemSimpleMachineChassi>.firstItem, <metaitem:dustTinyAsh>, <metaitem:gearWood>, <metaitem:circuit.basic>, <metaitem:gearWood>)
    .buildAndRegister();

// Simple Chassis Recycling
arc_furnace.recipeBuilder().EUt(30).duration(400)
    .inputs(<ore:itemSimpleMachineChassi>)
    .outputs(<ore:ingotConstructionAlloy>.firstItem * 4)
    .buildAndRegister();

// Fused Quartz
alloy_smelter.recipeBuilder().EUt(30).duration(100)
    .inputs(<ore:gemQuartz> * 2, <ore:dustRegularNetherQuartz> * 2)
    .outputs(<ore:fusedQuartz>.firstItem * 4)
    .buildAndRegister();

// Pressurized Tank
recipes.addShaped("eio_tank_2", <enderio:block_tank:1>, [[<ore:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:plateDarkSteel>], [<ore:fusedQuartz>, <ore:itemMachineChassi>, <ore:fusedQuartz>], [<ore:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:plateDarkSteel>]]);

// Dark Pressure Plate
recipes.addShaped("eio_dark_presure_plate", <enderio:block_painted_pressure_plate:8>, [[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:gregHardHammers>]]);

// Block Detector
recipes.addShaped("eio_block_detector", <enderio:block_detector_block>, [[<ore:plateDarkSteel>, <enderio:block_painted_pressure_plate:8>, <ore:plateDarkSteel>], [<ore:plateDarkSteel>, pistons[1], <ore:plateDarkSteel>], [<ore:plateDarkSteel>, <ore:blockRedstone>, <ore:plateDarkSteel>]]);

// The Niard
recipes.addShaped("eio_niard", <enderio:block_niard>, [[<metaitem:fluid_cell>, <ore:plateDarkSteel>, <metaitem:fluid_cell>], [pistons[1], <ore:itemSimpleMachineChassi>, pumps[1]], [<enderio:block_dark_iron_bars>, <enderio:block_dark_iron_bars>, <enderio:block_dark_iron_bars>]]);

// Impulse Hopper
recipes.addShaped("eio_impulse_hopper", <enderio:block_impulse_hopper>, [[<ore:plateDarkSteel>, <ore:blockHopper>, <ore:plateDarkSteel>], [<ore:gearSmallSteel>, <ore:itemSimpleMachineChassi>, <ore:gearSmallSteel>], [<ore:plateDarkSteel>, <ore:wireFineRedAlloy>, <ore:plateDarkSteel>]]);

// Power Monitor
recipes.addShaped("eio_power_monitor", <enderio:block_power_monitor>, [[<ore:plateDarkSteel>, <enderio:item_conduit_probe>, <ore:plateDarkSteel>], [<metaitem:plate.power_integrated_circuit>, <ore:itemMachineChassi>, <metaitem:plate.power_integrated_circuit>], [<ore:plateDarkSteel>, circuits[1], <ore:plateDarkSteel>]]);

// Graphical Power Monitor
recipes.addShaped("eio_power_monitor_2", <enderio:block_advanced_power_monitor>, [[<ore:screwSteel>, <ore:plateDarkSteel>, <ore:screwSteel>], [<ore:gregScrewDrivers>, <enderio:block_power_monitor>, <metaitem:display>], [<ore:screwSteel>, <ore:plateDarkSteel>, <ore:screwSteel>]]);

// Buffer
recipes.addShaped("eio_item_buffer", <enderio:block_buffer>, [[null, <ore:plateDarkSteel>, null], [<ore:plateDarkSteel>, <meta_tile_entity:gtadditions:crate.wood>, <ore:plateDarkSteel>], [null, <ore:plateDarkSteel>, null]]);

// Enchanter
recipes.addShaped("eio_enchanter", <enderio:block_enchanter>, [[<ore:gemExquisiteDiamond>, <ore:bookEmpty>, <ore:gemExquisiteDiamond>], [circuits[3], <ore:blockEndSteel>, circuits[3]], [emitters[3], <ore:blockEndSteel>, emitters[3]]]);

// Farming Station
recipes.addShaped("eio_farming_station", <enderio:block_farm_station>, [[<ore:plateAluminium>, <ore:itemPulsatingCrystal>, <ore:plateAluminium>], [circuits[2], <ore:itemSimpleMachineChassi>, circuits[2]], [<ore:gearSmallSteel>, hulls[1], <ore:gearSmallSteel>]]);

// Simple Wired Charger
recipes.addShaped("eio_simple_wired_charger", <enderio:block_simple_wired_charger>, [[tieredPlates[0], tieredPlates[0], tieredPlates[0]], [<ore:gregHardHammers>, <ore:itemSimpleMachineChassi>, <ore:gregScrewDrivers>], [<metaitem:component.small_coil>, circuits[1], <metaitem:component.small_coil>]]);

disassembler.recipeBuilder().EUt(32).duration(1200)
    .inputs(<enderio:block_simple_wired_charger>)
    .outputs(<metaitem:plateWroughtIron>, <metaitem:plateWroughtIron>, <metaitem:plateWroughtIron>, <metaitem:dustTinyAsh>, <ore:itemSimpleMachineChassi>.firstItem, <metaitem:dustTinyAsh>, <metaitem:component.small_coil>, circuits[1].itemArray[0], <metaitem:component.small_coil>)
    .buildAndRegister();

// Wired Charger
recipes.addShaped("eio_wired_charger", <enderio:block_wired_charger>, [[<ore:plateDarkSteel>, <metaitem:component.small_coil>, <ore:plateDarkSteel>], [<metaitem:plate.power_integrated_circuit>, <ore:itemMachineChassi>, <metaitem:plate.power_integrated_circuit>], [<ore:plateDarkSteel>, circuits[3], <ore:plateDarkSteel>]]);

disassembler.recipeBuilder().EUt(512).duration(1200)
    .inputs(<enderio:block_wired_charger>)
    .outputs(<ore:plateDarkSteel>.firstItem, <metaitem:component.small_coil>, <ore:plateDarkSteel>.firstItem, <metaitem:plate.power_integrated_circuit>, <ore:itemMachineChassi>.firstItem, <metaitem:plate.power_integrated_circuit>, <ore:plateDarkSteel>.firstItem, <metaitem:circuit.computer.electronic>, <ore:plateDarkSteel>.firstItem)
    .buildAndRegister();

// Enhanced Wired Charger
recipes.addShaped("eio_enhanced_wired_charger", <enderio:block_enhanced_wired_charger>, [[<ore:plateStellarAlloy>, <metaitem:plate.power_integrated_circuit>, <ore:plateStellarAlloy>], [<metaitem:plate.high_power_integrated_circuit>, <ore:itemEnhancedMachineChassi>, <metaitem:plate.high_power_integrated_circuit>], [<ore:plateStellarAlloy>, circuits[5], <ore:plateStellarAlloy>]]);

// Wireless Charger
recipes.addShaped("eio_wireless_charger", <enderio:block_wireless_charger>, [[<ore:plateDarkSteel>, circuits[4], <ore:plateDarkSteel>], [<ore:plateEndSteel>, <ore:itemEndSteelMachineChassi>, <ore:plateEndSteel>], [emitters[3], field_generators[1], emitters[3]]]);

disassembler.recipeBuilder().EUt(2048).duration(1200)
    .inputs(<enderio:block_wireless_charger>)
    .outputs(<ore:plateDarkSteel>.firstItem, circuits[4].itemArray[0], <ore:plateDarkSteel>.firstItem, <ore:plateEndSteel>.firstItem, <ore:itemEndSteelMachineChassi>.firstItem, <ore:plateEndSteel>.firstItem, emitters[3].itemArray[0], field_generators[1].itemArray[0], emitters[3].itemArray[0])
    .buildAndRegister();

// Wireless Energy Transmitter Dish Assembly
assembler.recipeBuilder().EUt(7680).duration(100)
    .inputs(<ore:gemEnderEye>, <ore:cableGtSingleTungsten>, <ore:plateHastelloyN> * 2)
    .fluidInputs([<liquid:plastic>*288])
    .outputs(<ore:itemWirelessDish>.firstItem)
    .buildAndRegister();

// Wireless Energy Transmitter Antenna
recipes.addShaped("eio_wireless_antenna", <enderio:block_normal_wireless_charger>, [[null, <ore:itemWirelessDish>, null], [<ore:itemWirelessDish>, <ore:itemEndSteelMachineChassi>, <ore:itemWirelessDish>], [<ore:itemWirelessDish>, field_generators[2], <ore:itemWirelessDish>]]);

disassembler.recipeBuilder().EUt(7680).duration(1200)
    .inputs(<enderio:block_normal_wireless_charger>)
    .outputs(<metaitem:dustTinyAsh>, <ore:itemWirelessDish>.firstItem, <metaitem:dustTinyAsh>, <ore:itemWirelessDish>.firstItem, <ore:itemEndSteelMachineChassi>.firstItem, <ore:itemWirelessDish>.firstItem, <ore:itemWirelessDish>.firstItem, field_generators[2].itemArray[0], <ore:itemWirelessDish>.firstItem)
    .buildAndRegister();

// Enhanced Wireless Energy Transmitter Antenna
recipes.addShaped("eio_enhanced_wireless_antenna", <enderio:block_enhanced_wireless_charger>, [[null, <ore:itemWirelessDish>, null], [<ore:itemWirelessDish>, <ore:itemEnhancedMachineChassi>, <ore:itemWirelessDish>], [<ore:itemWirelessDish>, field_generators[5], <ore:itemWirelessDish>]]);

// Enhanced Wireless Charging Transmitter Antenna Extension
recipes.addShaped("eio_enhanced_wireless_antenna_extension", <enderio:block_wireless_charger_extension>, [[<ore:itemWirelessDish>, <ore:itemWirelessDish>, null], [<ore:itemWirelessDish>, <ore:itemEnhancedMachineChassi>, <ore:itemWirelessDish>], [<ore:stickEndSteel>, <ore:itemWirelessDish>, <ore:itemWirelessDish>, ]]);

// Dimensional Transciever
assembler.recipeBuilder().EUt(8192).duration(600)
    .inputs(<ore:plateDarkSteel> * 16, <ore:circuitElite> * 4, <ore:itemUnsouledMachineChassi>, <ore:wireFineNiobiumTitanium> * 4, field_generators[5], sensors[5], emitters[5])
    .fluidInputs([<liquid:polytetrafluoroethylene> * 1152])
    .outputs(<enderio:block_transceiver>)
    .buildAndRegister();

// Vacuum Chest
recipes.addShaped("eio_vacuum_chest", <enderio:block_vacuum_chest>, [[null, <ore:itemPulsatingCrystal>, null], [<ore:plateSteel>, <ore:chestWood>, <ore:plateSteel>], [null, <ore:plateSteel>, null]]);

// XP Vacuum
recipes.addShaped("eio_xp_vacuum", <enderio:block_xp_vacuum>, [[<ore:plateDarkSteel>, <enderio:item_xp_transfer>, <ore:plateDarkSteel>], [<enderio:block_dark_iron_bars>, <enderio:block_vacuum_chest>, <enderio:block_dark_iron_bars>], [<ore:plateDarkSteel>, <enderio:block_dark_iron_bars>, <ore:plateDarkSteel>]]);

// Travel Anchor
recipes.addShaped("eio_travel_anchor", <enderio:block_travel_anchor> * 2, [[<ore:plateDarkSteel>, <ore:itemPulsatingCrystal>, <ore:plateDarkSteel>], [sensors[1], <ore:itemSoulMachineChassi>, emitters[1]], [<ore:plateDarkSteel>, circuits[1], <ore:plateDarkSteel>]]);

// Dialing Device
recipes.addShaped("eio_dialing_device", <enderio:block_dialing_device>, [
    [<ore:plateStellarAlloy>, <metaitem:display>, <ore:plateStellarAlloy>],
    [emitters[6], <ore:circuitMaster>, emitters[6]],
    [<ore:plateDenseNaquadahAlloy>, <ore:blockStellarAlloy>, <ore:plateDenseNaquadahAlloy>]
]);

// Telepad Block
assembly_line.recipeBuilder().EUt(30720).duration(2400)
    .fluidInputs(soldering_alloys[1] * 1152)
    .fluidInputs([<fluid:lubricant> * 2000])
    .inputs(<ore:frameGtBlueSteel> * 16)
    .inputs(<enderio:block_travel_anchor> * 2)
    .inputs(sensors[6] * 2)
    .inputs(<ore:plateStellarAlloy> * 32)
    .inputs(circuits[6] * 4)
    .inputs(field_generators[6])
    .inputs(<ore:foilPolybenzimidazole> * 16)
    .inputs(<ore:screwNaquadah> * 32)
    .inputs(<ore:rotorHsse> * 2)
    .inputs(emitters[6] * 2)
    .outputs(<enderio:block_tele_pad> * 18)
    .buildAndRegister();

// Player Token
forming_press.recipeBuilder().EUt(30).duration(200)
    .inputs(<ore:ingotDarkSteel>)
    .notConsumable(<metaitem:shape.mold.cylinder>)
    .circuit(0)
    .outputs(<ore:itemTokenPlayer>.firstItem)
    .buildAndRegister();

// Animal Token
forming_press.recipeBuilder().EUt(30).duration(200)
    .inputs(<ore:ingotDarkSteel>)
    .notConsumable(<metaitem:shape.mold.cylinder>)
    .circuit(1)
    .outputs(<ore:itemTokenAnimal>.firstItem)
    .buildAndRegister();

// Monster Token
forming_press.recipeBuilder().EUt(30).duration(200)
    .inputs(<ore:ingotDarkSteel>)
    .notConsumable(<metaitem:shape.mold.cylinder>)
    .circuit(2)
    .outputs(<ore:itemTokenMonster>.firstItem)
    .buildAndRegister();

// Conduit Binder Composite
mixer.recipeBuilder().EUt(30).duration(100)
    .inputs(<ore:sand> * 4, <ore:gravel> * 2)
    .fluidInputs([<fluid:concrete> * 144])
    .outputs(<ore:itemBinderComposite>.firstItem * 8)
    .buildAndRegister();

recipes.addShapeless("eio_conduit_binder_manual", <ore:itemBinderComposite>.firstItem * 8, [<ore:sand>, <ore:sand>, <ore:sand>, <ore:sand>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}).giveBack(<minecraft:bucket>)]);

// Conduit Binder
furnace.addRecipe(<ore:itemConduitBinder>.firstItem, <ore:itemBinderComposite>);

// Crytals
val crystal_inputs = [<ore:dustDiamond>, <ore:dustEmerald>, <ore:dustRegularEnderEye>, <ore:dustAmethyst>, <ore:dustVinteum>] as IIngredient[];
val crystal_outputs = [<ore:itemPulsatingCrystal>.firstItem, <ore:itemVibrantCrystal>.firstItem, <ore:itemEnderCrystal>.firstItem, <ore:itemAttractorCrystal>.firstItem, <ore:itemPrecientCrystal>.firstItem] as IItemStack[];

for i in 0 to crystal_inputs.length {
    autoclave.recipeBuilder().EUt(30).duration(160)
        .inputs(crystal_inputs[i])
        .fluidInputs([<fluid:glowstone> * 16])
        .outputs(crystal_outputs[i])
        .buildAndRegister();
}

// Rod of Return
recipes.addShaped("eio_rod_of_return", <enderio:item_rod_of_return>, [[null, <ore:itemPulsatingCrystal>, <ore:itemEnderCrystal>], [<ore:gregHardHammers>, <ore:itemInfinityRod>, <ore:itemPulsatingCrystal>], [<ore:itemInfinityRod>, <ore:gregScrewDrivers>, null]]);

// Dark Anvil
alloy_smelter.recipeBuilder().EUt(30).duration(1200)
    .inputs(<ore:ingotDarkSteel> * 31)
    .notConsumable(<metaitem:shape.mold.anvil>)
    .outputs(<enderio:block_dark_steel_anvil>)
    .buildAndRegister();

// Dark Steel Trapdoor
recipes.addShaped("eio_dark_steel_trapdoor", <enderio:block_dark_steel_trapdoor>, [[<ore:plateDarkSteel>, <ore:plateDarkSteel>, null], [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:gregHardHammers>]]);

// Dark Steel Door
recipes.addShaped("eio_dark_steel_door", <enderio:block_dark_steel_door>, [[<ore:plateDarkSteel>, <ore:plateDarkSteel>, null], [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:gregHardHammers>], [<ore:plateDarkSteel>, <ore:plateDarkSteel>, null]]);

// Conduit Probe
recipes.addShaped("eio_conduit_probe", <enderio:item_conduit_probe>, [[<ore:stickIronMagnetic>, <ore:gregScrewDrivers>, <ore:stickIronMagnetic>], [tieredPlates[1], circuits[0], tieredPlates[1]], [tieredPlates[1], <ore:wireFineRedAlloy>, tieredPlates[1]]]);

// Yeta Wrench
recipes.addShaped("eio_yeta_wrench", <enderio:item_yeta_wrench>, [[null, <ore:gregHardHammers>, <ore:toolHeadWrenchSteel>], [null, <ore:stickLongSteel>, <ore:gregScrewDrivers>], [<ore:ringSteel>, null, null]]);

// Experience Rod
forming_press.recipeBuilder().EUt(30).duration(200)
    .inputs(<ore:stickDarkSteel>, <ore:plateGlowstone> * 4, <ore:itemPulsatingPowder> * 2)
    .outputs(<enderio:item_xp_transfer>)
    .buildAndRegister();

// Coordinate Scanner
recipes.addShaped("eio_coordinate_scanner", <enderio:item_coord_selector>, [[emitters[3], <metaitem:display>, sensors[3]], [<ore:plateMaragingSteelA>, <ore:ringStainlessSteel>, <ore:plateMaragingSteelA>], [null, <ore:gregScrewDrivers>, <ore:plateMaragingSteelA>]]);

// Staff of Travelling
recipes.addShaped("eio_staff_off_travelling", <enderio:item_travel_staff>, [[null, <ore:gregHardHammers>, <ore:itemEnderCrystal>], [null, <ore:itemInfinityRod>, <ore:gregScrewDrivers>], [<ore:itemInfinityRod>, null, null]]);

// Electromagnet
recipes.addShaped("eio_electromagnet", <enderio:item_magnet>, [[tieredPlates[1], <ore:ringSteel>, tieredPlates[1]], [tieredPlates[1], <ore:wireFineCopper>, tieredPlates[1]], [<ore:stickIronMagnetic>, <ore:wireFineCopper>, <ore:stickIronMagnetic>]]);

// TODO Make Chargers Carry over everything in them

// Simple Inventory Charger
recipes.addShaped("eio_inventory_charger_simple", <enderio:item_inventory_charger_simple>, [[<ore:screwWroughtIron>, <ore:plateWroughtIron>, <ore:screwWroughtIron>], [<ore:plateWroughtIron>, <ore:itemPulsatingCrystal>, <ore:plateWroughtIron>], [<ore:screwWroughtIron>, <ore:plateWroughtIron>, <ore:screwWroughtIron>]]);

// Basic Inventory Charger
recipes.addShaped("eio_inventory_charger_basic", <enderio:item_inventory_charger_basic>, [[<ore:screwSteel>, circuits[1], <ore:screwSteel>], [<ore:plateDarkSteel>, <enderio:item_inventory_charger_simple>, <ore:plateDarkSteel>], [<ore:screwSteel>, <metaitem:battery.hull.lv>, <ore:screwSteel>]]);

// Inventory Charger
recipes.addShaped("eio_inventory_charger", <enderio:item_inventory_charger>, [[<ore:screwStainlessSteel>, circuits[2], <ore:screwStainlessSteel>], [tieredPlates[3], <enderio:item_inventory_charger_basic>, tieredPlates[3]], [<ore:screwStainlessSteel>, <metaitem:energy_crystal>, <ore:screwStainlessSteel>]]);

// Vibrant Inventory Charger
recipes.addShaped("eio_inventory_charger_vibrant", <enderio:item_inventory_charger_vibrant>, [[<ore:screwTungstenSteel>, circuits[3], <ore:screwTungstenSteel>], [<metaitem:engraved.lapotron_chip>, <enderio:item_inventory_charger>, <metaitem:engraved.lapotron_chip>], [<ore:screwTungstenSteel>, <metaitem:engraved.lapotron_chip>, <ore:screwTungstenSteel>]]);

// Clay Coated Glowstone Dust
alloy_smelter.recipeBuilder().EUt(24).duration(100)
    .inputs(<ore:dustGlowstone>, <minecraft:clay_ball>)
    .outputs(<ore:itemClayedGlowstone>.firstItem * 2)
    .buildAndRegister();

// Glowstone Nano-Particles
macerator.recipeBuilder().EUt(24).duration(100)
    .inputs(<ore:itemClayedGlowstone>)
    .outputs(<enderio:block_holy_fog> * 4, <ore:dustSmallClay>.firstItem * 2)
    .buildAndRegister();

// Reinforced Obsidian
recipes.addShaped("eio_reinforced_obsidian", <enderio:block_reinforced_obsidian>, [[<ore:boltSteel>, <enderio:block_dark_iron_bars>, <ore:boltSteel>], [<enderio:block_dark_iron_bars>, <ore:blockObsidian>, <enderio:block_dark_iron_bars>], [<ore:boltSteel>, <enderio:block_dark_iron_bars>, <ore:boltSteel>]]);

// Tormented Enderman Head
assembler.recipeBuilder().EUt(2048).duration(400)
    .inputs(<enderio:block_enderman_skull>, <ore:boltEnderium> * 8)
    .outputs(<enderio:block_enderman_skull:2>)
    .buildAndRegister();

// Weather Crystal
implosion_compressor.recipeBuilder().EUt(7680).duration(1200)
    .inputs(<ore:itemEnderCrystalPowder> * 32, <ore:itemPulsatingPowder> * 32)
    .property("explosives", 64)
    .outputs(<ore:itemWeatherCrystal>.firstItem)
    .buildAndRegister();

// Weather Crystal
implosion_compressor.recipeBuilder().EUt(7680).duration(1200)
    .inputs(<ore:itemEnderCrystalPowder> * 32, <ore:itemPulsatingPowder> * 32)
    .property("explosives", <metaitem:dynamite> * 32)
    .outputs(<ore:itemWeatherCrystal>.firstItem)
    .buildAndRegister();

// Obelisks
val obelisks = [<enderio:block_attractor_obelisk>, <enderio:block_aversion_obelisk>, <enderio:block_inhibitor_obelisk>, <enderio:block_relocator_obelisk>, <enderio:block_weather_obelisk>, <enderio:block_experience_obelisk>] as IItemStack[];
val obelisk_items = [<ore:itemAttractorCrystal>, <enderio:block_enderman_skull:2>, <metaitem:quantumeye>, <ore:blockPrismarine>, <ore:itemWeatherCrystal>, <enderio:item_xp_transfer>] as IIngredient[];

for i in 0 to obelisks.length {
    recipes.addShaped("eio_obelisk_" ~ i, obelisks[i], [[<ore:gregScrewDrivers>, obelisk_items[i], <ore:gregWrenches>], [<ore:plateEnderium>, <ore:gearHastelloyN>, <ore:plateEnderium>], [<ore:plateEndSteel>, <ore:itemSoulMachineChassi>, <ore:plateEndSteel>]]);
}

// Quite Clear Glass
// TODO Figure out why is is permanently missing in JEI
arc_furnace.recipeBuilder().EUt(30).duration(60)
    .inputs(<ore:blockGlass>)
    .outputs(<ore:fusedGlass>.firstItem)
    .buildAndRegister();

// Endervoir
recipes.addShaped("eio_endervoir", <enderio:block_reservoir> * 4, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockGlass>, <minecraft:cauldron>, <ore:blockGlass>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

// Painting Machine
recipes.addShaped("eio_painting_machine", <enderio:block_painter>, [[<ore:plateWroughtIron>, motors[1], <ore:plateWroughtIron>], [circuits[1], <ore:itemSimpleMachineChassi>, circuits[1]], [<ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>]]);

// Light
canner.recipeBuilder().EUt(16).duration(20)
    .inputs(<ore:dustGlowstone>, <metaitem:fluid_cell>)
    .outputs(<enderio:block_electric_light:2> * 16)
    .buildAndRegister();

// Electric Light
canner.recipeBuilder().EUt(16).duration(20)
    .inputs(<enderio:block_holy_fog>, <metaitem:fluid_cell>)
    .outputs(<enderio:block_electric_light> * 16)
    .buildAndRegister();

// Wireless Electric Light
canner.recipeBuilder().EUt(16).duration(20)
    .inputs(<enderio:block_holy_fog>, <metaitem:large_fluid_cell.steel>)
    .outputs(<enderio:block_electric_light:4> * 64)
    .buildAndRegister();

// Light Inversion
val light = <enderio:block_electric_light>.definition;
var i = 0;

while i < 6 {
    recipes.addShapeless("eio_light_invert_" ~ i, light.makeStack(i + 1), [light.makeStack(i), <minecraft:redstone_torch>.reuse()]);
    recipes.addShapeless("eio_light_invert_" ~ (i + 3), light.makeStack(i), [light.makeStack(i + 1), <minecraft:redstone_torch>.reuse()]);
    i += 2;
}

// Cake Base
alloy_smelter.recipeBuilder().EUt(20).duration(1200)
    .inputs(<ore:dustRegularWheat> * 3, <ore:egg>)
    .outputs(<ore:itemCakeBase>.firstItem)
    .buildAndRegister();

// Infinity Rod
alloy_smelter.recipeBuilder().EUt(24).duration(600)
    .inputs(<ore:stickLongSteelMagnetic> * 2, <ore:stickLongIronMagnetic> * 2)
    .outputs(<ore:itemInfinityRod>.firstItem)
    .buildAndRegister();

// Soul Vial
assembler.recipeBuilder().EUt(30).duration(200)
    .inputs(<ore:boltDarkSteel> * 3, <gtadditions:ga_transparent_casing> * 3)
    .outputs(<enderio:item_soul_vial> * 3)
    .buildAndRegister();

// Grains
val crystals = [<ore:itemPrecientCrystal>, <ore:itemVibrantCrystal>, <ore:itemPulsatingCrystal>, <ore:itemEnderCrystal>] as IIngredient[];
val grains = [<ore:itemPrecientPowder>, <ore:itemVibrantPowder>, <ore:itemPulsatingPowder>, <ore:itemEnderCrystalPowder>] as IIngredient[];

for i in 0 to crystals.length {
    macerator.recipeBuilder().EUt(8).duration(30)
        .inputs(crystals[i])
        .outputs(grains[i].itemArray[0])
        .chancedOutput(grains[i].itemArray[0], 6500, 1500)
        .chancedOutput(grains[i].itemArray[0], 3500, 1500)
        .buildAndRegister();
}

// Capacitors
// Basic
recipes.addShaped("eio_capacitor_basic", <enderio:item_basic_capacitor>, [[tieredPlates[1], <metaitem:component.small_coil>, tieredPlates[1]], [tieredPlates[1], <ore:itemVibrantCrystal>, tieredPlates[1]], [<ore:boltIron>, null, <ore:boltIron>]]);

disassembler.recipeBuilder().EUt(32).duration(1200)
    .inputs(<enderio:item_basic_capacitor>)
    .outputs(tieredPlates[1].itemArray[0], <metaitem:component.small_coil>, tieredPlates[1].itemArray[0], tieredPlates[1].itemArray[0], <ore:itemVibrantCrystal>.firstItem, tieredPlates[1].itemArray[0], <ore:boltIron>.firstItem, <ore:dustTinyAsh>.firstItem, <ore:boltIron>.firstItem)
    .buildAndRegister();

// Endergetic
recipes.addShaped("eio_capacitor_endergetic", <enderio:item_capacitor_energetic_silver>, [[tieredPlates[3], <metaitem:plate.power_integrated_circuit>, tieredPlates[3]], [<ore:plateDarkSteel>, <ore:netherStar>, <ore:plateDarkSteel>], [<ore:boltSteel>, null, <ore:boltSteel>]]);

disassembler.recipeBuilder().EUt(480).duration(1200)
    .inputs(<enderio:item_capacitor_energetic_silver>)
    .outputs(tieredPlates[3].itemArray[0], <metaitem:plate.power_integrated_circuit>, tieredPlates[3].itemArray[0], <ore:plateDarkSteel>.firstItem, <ore:netherStar>.firstItem, <ore:plateDarkSteel>.firstItem, <ore:boltSteel>.firstItem, <ore:dustTinyAsh>.firstItem, <ore:boltSteel>.firstItem)
    .buildAndRegister();

// Vivid
recipes.addShaped("eio_capacitor_vivid", <enderio:item_capacitor_vivid>, [[<ore:plateHsss>, <metaitem:plate.high_power_integrated_circuit>, <ore:plateHsss>], [<ore:plateStellarAlloy>, <metaitem:quantumstar>, <ore:plateStellarAlloy>], [<ore:boltYttriumBariumCuprate>, null, <ore:boltYttriumBariumCuprate>]]);

disassembler.recipeBuilder().EUt(8192).duration(1200)
    .inputs(<enderio:item_capacitor_vivid>)
    .outputs(<ore:plateHsss>.firstItem, <metaitem:plate.high_power_integrated_circuit>, <ore:plateHsss>.firstItem, <ore:plateStellarAlloy>.firstItem, <metaitem:quantumstar>, <ore:plateStellarAlloy>.firstItem, <ore:boltYttriumBariumCuprate>.firstItem, <ore:dustTinyAsh>.firstItem, <ore:boltYttriumBariumCuprate>.firstItem)
    .buildAndRegister();

// Melodic
recipes.addShaped("eio_capacitor_melodic", <enderio:item_capacitor_melodic>, [[<ore:plateNaquadahAlloy>, <metaitem:uhpic>, <ore:plateNaquadahAlloy>], [<ore:plateTungstenTitaniumCarbide>, <metaitem:gravistar>, <ore:plateTungstenTitaniumCarbide>], [<ore:boltZeron>, null, <ore:boltZeron>]]);

disassembler.recipeBuilder().EUt(131072).duration(1200)
    .inputs(<enderio:item_capacitor_melodic>)
    .outputs(<ore:plateNaquadahAlloy>.firstItem, <metaitem:uhpic>, <ore:plateNaquadahAlloy>.firstItem, <ore:plateTungstenTitaniumCarbide>.firstItem, <metaitem:gravistar>, <ore:plateTungstenTitaniumCarbide>.firstItem, <ore:boltZeron>.firstItem, <ore:dustTinyAsh>.firstItem, <ore:boltZeron>.firstItem)
    .buildAndRegister();

// Stellar
recipes.addShaped("eio_capacitor_stellar", <enderio:item_capacitor_stellar>, [[<ore:plateDenseCinobite>, <metaitem:degenerate.rhenium.plate>, <ore:plateDenseCinobite>], [<ore:plateProtoAdamantium>, <metaitem:unstable.star>, <ore:plateProtoAdamantium>], [<ore:boltQuantum>, null, <ore:boltQuantum>]]);


// Chemistry
// Nutrient Distillation
brewer.recipeBuilder().EUt(30).duration(100)
    .inputs(<ore:cropNetherWart>)
    .fluidInputs([<fluid:distilled_water> * 1000])
    .fluidOutputs([<fluid:nutrient_distillation> * 1000])
    .buildAndRegister();

// Dew of the Void
chemical_reactor.recipeBuilder().EUt(480).duration(200)
    .inputs(<ore:itemPulsatingPowder>, <ore:itemEnderCrystalPowder>)
    .fluidInputs([<fluid:nutrient_distillation> * 10000])
    .fluidOutputs([<fluid:ender_distillation> * 10000])
    .buildAndRegister();

// Vapor of Levity
chemical_reactor.recipeBuilder().EUt(480).duration(200)
    .inputs(<ore:itemVibrantPowder>, <ore:itemPrecientPowder>)
    .fluidInputs([<fluid:ender_distillation> * 5000])
    .fluidOutputs([<fluid:vapor_of_levity> * 5000])
    .buildAndRegister();

// Hootch
brewer.recipeBuilder().EUt(480).duration(100)
    .inputs(<ore:dustRegularWheat>)
    .fluidInputs([<fluid:water> * 1000])
    .fluidOutputs([<fluid:hootch> * 100])
    .buildAndRegister();

// Fire Water
chemical_reactor.recipeBuilder().EUt(480).duration(100)
    .inputs(<ore:dustBlaze>)
    .fluidInputs([<fluid:hootch> * 1000])
    .fluidOutputs([<fluid:fire_water> * 1000])
    .buildAndRegister();

// Liquid Sunshine
chemical_reactor.recipeBuilder().EUt(480).duration(100)
    .inputs(<ore:dustGlowstone>)
    .fluidInputs([<fluid:fire_water> * 1000])
    .fluidOutputs([<fluid:liquid_sunshine> * 1000])
    .buildAndRegister();

// Cloud Seed
chemical_reactor.recipeBuilder().EUt(480).duration(100)
    .inputs(<minecraft:packed_ice>)
    .notConsumable(<ore:dustRegularSilver>)
    .fluidInputs([<fluid:water> * 1000])
    .fluidOutputs([<fluid:cloud_seed> * 1000])
    .buildAndRegister();

// Concentrated Cloud Seed
distillery.recipeBuilder().EUt(120).duration(20)
    .circuit(0)
    .fluidInputs([<fluid:cloud_seed> * 50])
    .fluidOutputs([<fluid:cloud_seed_concentrated> * 25])
    .buildAndRegister();


// Materials
// Dark Steel
mixer.recipeBuilder().EUt(30).duration(496)
    .inputs(<ore:dustRegularBlackSteel> * 5)
    .inputs(<ore:dustRegularVanadium> * 4)
    .inputs(<ore:dustRegularCarbon>)
    .outputs(<ore:dustDarkSteel>.firstItem * 9)
    .buildAndRegister();

furnace.remove(<ore:ingotDarkSteel>.firstItem);

blast_furnace.recipeBuilder().EUt(120).duration(120).property("temperature", 1799)
    .inputs(<ore:dustDarkSteel>)
    .outputs(<ore:ingotDarkSteel>.firstItem)
    .buildAndRegister();

macerator.recipeBuilder().EUt(128).duration(30)
    .inputs(<ore:ingotDarkSteel>)
    .outputs(<ore:dustDarkSteel>.firstItem)
    .buildAndRegister();

compressor.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:ingotDarkSteel> * 9)
    .outputs(<ore:blockDarkSteel>.firstItem)
    .buildAndRegister();

forge_hammer.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:blockDarkSteel>)
    .outputs(<ore:ingotDarkSteel>.firstItem * 9)
    .buildAndRegister();

large_forge_hammer.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:blockDarkSteel>)
    .fluidInputs([<fluid:lubricant> * 2])
    .outputs(<ore:ingotDarkSteel>.firstItem * 9)
    .buildAndRegister();

extruder.recipeBuilder().EUt(48).duration(150)
    .inputs(<ore:ingotDarkSteel>)
    .notConsumable(<metaitem:shape.extruder.rod>)
    .outputs(<ore:stickDarkSteel>.firstItem * 2)
    .buildAndRegister();

metal_bender.recipeBuilder().EUt(24).duration(56)
    .inputs(<ore:ingotDarkSteel>)
    .property("circuit", 0)
    .outputs(<ore:plateDarkSteel>.firstItem)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(896)
    .inputs(<ore:blockDarkSteel>)
    .fluidInputs(cuttingFluids[0])
    .outputs(<ore:plateDarkSteel>.firstItem * 9)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(582)
    .inputs(<ore:blockDarkSteel>)
    .fluidInputs(cuttingFluids[1])
    .outputs(<ore:plateDarkSteel>.firstItem * 9)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(224)
    .inputs(<ore:blockDarkSteel>)
    .fluidInputs(cuttingFluids[2])
    .outputs(<ore:plateDarkSteel>.firstItem * 9)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(256)
    .inputs(<ore:stickDarkSteel>)
    .fluidInputs(cuttingFluids[0])
    .outputs(<ore:boltDarkSteel>.firstItem * 4)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(166)
    .inputs(<ore:stickDarkSteel>)
    .fluidInputs(cuttingFluids[1])
    .outputs(<ore:boltDarkSteel>.firstItem * 4)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(644)
    .inputs(<ore:stickDarkSteel>)
    .fluidInputs(cuttingFluids[2])
    .outputs(<ore:boltDarkSteel>.firstItem * 4)
    .buildAndRegister();

extruder.recipeBuilder().EUt(120).duration(16)
    .inputs(<ore:ingotDarkSteel>)
    .notConsumable(<metaitem:shape.extruder.bolt>)
    .outputs(<ore:boltDarkSteel>.firstItem)
    .buildAndRegister();

lathe.recipeBuilder().EUt(4).duration(8)
    .inputs(<ore:boltDarkSteel>)
    .outputs(<ore:screwDarkSteel>.firstItem)
    .buildAndRegister();

// End Steel
chemical_bath.recipeBuilder().EUt(1920).duration(400)
    .inputs(<ore:ingotDarkSteel>)
    .fluidInputs([<fluid:ender_distillation> * 1000])
    .outputs(<ore:ingotEndSteel>.firstItem)
    .buildAndRegister();

compressor.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:ingotEndSteel> * 9)
    .outputs(<ore:blockEndSteel>.firstItem)
    .buildAndRegister();

forge_hammer.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:blockEndSteel>)
    .outputs(<ore:ingotEndSteel>.firstItem * 9)
    .buildAndRegister();

large_forge_hammer.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:blockEndSteel>)
    .fluidInputs([<fluid:lubricant> * 2])
    .outputs(<ore:ingotEndSteel>.firstItem * 9)
    .buildAndRegister();

extruder.recipeBuilder().EUt(192).duration(150)
    .inputs(<ore:ingotEndSteel>)
    .notConsumable(<metaitem:shape.extruder.rod>)
    .outputs(<ore:stickEndSteel>.firstItem * 2)
    .buildAndRegister();

metal_bender.recipeBuilder().EUt(30).duration(400)
    .inputs(<ore:ingotEndSteel>)
    .circuit(0)
    .outputs(<ore:plateEndSteel>.firstItem)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(3040)
    .inputs(<ore:blockEndSteel>)
    .fluidInputs(cuttingFluids[0])
    .outputs(<ore:plateEndSteel>.firstItem * 9)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(1976)
    .inputs(<ore:blockEndSteel>)
    .fluidInputs(cuttingFluids[1])
    .outputs(<ore:plateEndSteel>.firstItem * 9)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(760)
    .inputs(<ore:blockEndSteel>)
    .fluidInputs(cuttingFluids[2])
    .outputs(<ore:plateEndSteel>.firstItem * 9)
    .buildAndRegister();

extruder.recipeBuilder().EUt(120).duration(16)
    .inputs(<ore:ingotEndSteel>)
    .notConsumable(<metaitem:shape.extruder.bolt>)
    .outputs(<ore:boltEndSteel>.firstItem)
    .buildAndRegister();

lathe.recipeBuilder().EUt(24).duration(8)
    .inputs(<ore:boltEndSteel>)
    .outputs(<ore:screwEndSteel>.firstItem)
    .buildAndRegister();

// Stellar Alloy
implosion_compressor.recipeBuilder().EUt(7680).duration(400)
    .inputs(<ore:ingotEndSteel>, <ore:gemNetherStar>)
    .property("explosives", 24)
    .outputs(<ore:ingotStellarAlloy>.firstItem)
    .buildAndRegister();

implosion_compressor.recipeBuilder().EUt(7680).duration(400)
    .inputs(<ore:ingotEndSteel>, <ore:gemNetherStar>)
    .property("explosives", <metaitem:dynamite> * 12)
    .outputs(<ore:ingotStellarAlloy>.firstItem)
    .buildAndRegister();

compressor.recipeBuilder().EUt(2).duration(400)
    .inputs(<ore:ingotStellarAlloy> * 9)
    .outputs(<ore:blockStellarAlloy>.firstItem)
    .buildAndRegister();

metal_bender.recipeBuilder().EUt(30).duration(400)
    .inputs(<ore:ingotStellarAlloy>)
    .circuit(0)
    .outputs(<ore:plateStellarAlloy>.firstItem)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(3072)
    .inputs(<ore:blockStellarAlloy>)
    .fluidInputs(cuttingFluids[0])
    .outputs(<ore:plateStellarAlloy>.firstItem * 9)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(1996)
    .inputs(<ore:blockStellarAlloy>)
    .fluidInputs(cuttingFluids[1])
    .outputs(<ore:plateStellarAlloy>.firstItem * 9)
    .buildAndRegister();

cutting_saw.recipeBuilder().EUt(30).duration(768)
    .inputs(<ore:blockStellarAlloy>)
    .fluidInputs(cuttingFluids[2])
    .outputs(<ore:plateStellarAlloy>.firstItem * 9)
    .buildAndRegister();

extruder.recipeBuilder().EUt(120).duration(16)
    .inputs(<ore:ingotStellarAlloy>)
    .notConsumable(<metaitem:shape.extruder.bolt>)
    .outputs(<ore:boltStellarAlloy>.firstItem)
    .buildAndRegister();

lathe.recipeBuilder().EUt(30).duration(8)
    .inputs(<ore:boltStellarAlloy>)
    .outputs(<ore:screwStellarAlloy>.firstItem)
    .buildAndRegister();