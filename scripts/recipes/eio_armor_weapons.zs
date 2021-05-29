import crafttweaker.item.IIngredient;

// Probe Upgrade
mods.jei.JEI.hide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:top"}));


val base = <enderio:item_dark_steel_upgrade> as IIngredient;

// Base
recipes.addShaped("eio_base_upgrade", <enderio:item_dark_steel_upgrade>, [[<ore:screwDarkSteel>, <ore:plateDarkSteel>, <ore:screwDarkSteel>], [<ore:plateDarkSteel>, circuits[1], <ore:plateDarkSteel>], [<ore:screwDarkSteel>, <ore:plateDarkSteel>, <ore:screwDarkSteel>]]);

// Anvil Upgrades
// Micro Anvil
recipes.addShaped("eio_anvil_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:nuggetDarkSteel>]]);

// Mini Anvil
recipes.addShaped("eio_anvil_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil1", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:plateDarkSteel>]]);

// Pocket Anvil
recipes.addShaped("eio_anvil_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil2", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:blockDarkSteel>]]);


// Carpeting
recipes.addShaped("eio_carpeting_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:plateDenseSteel>]]);


// Depth
recipes.addShaped("eio_depth_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth", "enderio:enabled": 1 as byte}), [[<ore:plateDenseSteel>, <ore:gregHardHammers>], [base, null]]);


// Direct
recipes.addShaped("eio_direct_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct", "enderio:enabled": 1 as byte}), [[<ore:itemEnderCrystal>, <ore:gregHardHammers>], [base, <enderio:item_magnet>]]);


// Elytra
recipes.addShaped("eio_elytra_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra", "enderio:enabled": 1 as byte}), [[<enderio:block_industrial_insulation>, <ore:gregHardHammers>], [base, <minecraft:elytra>]]);


// Empowered Upgrades
// Empowered 1
recipes.addShaped("eio_empowered_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade", "enderio:enabled": 1 as byte}), [[<ore:wireFineCopper>, <ore:gregHardHammers>], [base, <ore:itemVibrantCrystal>]]);

// Empowered 2
recipes.addShaped("eio_empowered_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1", "enderio:enabled": 1 as byte}), [[<metaitem:component.small_coil>, <ore:gregHardHammers>], [base, <enderio:item_basic_capacitor>]]);

// Empowered 3
recipes.addShaped("eio_empowered_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2", "enderio:enabled": 1 as byte}), [[<metaitem:plate.power_integrated_circuit>, <ore:gregHardHammers>], [base, <enderio:item_capacitor_energetic_silver>]]);

// Empowered 4
recipes.addShaped("eio_empowered_upgrade_4", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3", "enderio:enabled": 1 as byte}), [[<metaitem:plate.high_power_integrated_circuit>, <ore:gregHardHammers>], [base, <enderio:item_capacitor_vivid>]]);

// Empowered 5
recipes.addShaped("eio_empowered_upgrade_5", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4", "enderio:enabled": 1 as byte}), [[<metaitem:uhpic>, <ore:gregHardHammers>], [base, <enderio:item_capacitor_melodic>]]);


// Glider
recipes.addShaped("eio_glider_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <openblocks:hang_glider>]]);


// Fork
recipes.addShaped("eio_fork_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <enderio:item_dark_steel_hand>]]);

// Inventory Upgrades
// Inventory 1
recipes.addShaped("eio_inventory_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv", "enderio:enabled": 1 as byte}), [[<ore:gearWood>, <ore:gregHardHammers>], [base, <ore:chestWood>]]);

// Inventory 2
recipes.addShaped("eio_inventory_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv1", "enderio:enabled": 1 as byte}), [[<ore:gearBlackBronze>, <ore:gregHardHammers>], [base, <meta_tile_entity:stainless_steel_chest>]]);

// Inventory 3
recipes.addShaped("eio_inventory_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv2", "enderio:enabled": 1 as byte}), [[<ore:gearHsss>, <ore:gregHardHammers>], [base, <meta_tile_entity:tungstensteel_chest>]]);


// Jump Upgrades
// Inventory 1
recipes.addShaped("eio_jump_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost1", "enderio:enabled": 1 as byte}), [[<ore:gearSmallSteel>, <ore:gregHardHammers>], [base, pistons[1]]]);

// Inventory 2
recipes.addShaped("eio_jump_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost2", "enderio:enabled": 1 as byte}), [[<ore:gearNitinolA>, <ore:gregHardHammers>], [base, pistons[3]]]);

// Inventory 3
recipes.addShaped("eio_jump_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3", "enderio:enabled": 1 as byte}), [[<ore:gearHsse>, <ore:gregHardHammers>], [base, pistons[5]]]);


// Night Vision TODO Gregicality Nightvision Goggles
recipes.addShaped("eio_nightvision_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision", "enderio:enabled": 1 as byte}), [[<metaitem:plate.power_integrated_circuit>, <ore:gregHardHammers>], [base, null]]);


// Padding
recipes.addShaped("eio_padding_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:padding", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, <ore:wool>]]);


// Solar Upgrades
// Simple Solar
recipes.addShaped("eio_solar_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar", "enderio:enabled": 1 as byte}), [[<metaitem:cover.solar.panel>, <ore:gregHardHammers>], [base, circuits[1]]]);

// Inventory 2
recipes.addShaped("eio_solar_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1", "enderio:enabled": 1 as byte}), [[<metaitem:cover.solar.panel.ulv>, <ore:gregHardHammers>], [base, circuits[3]]]);

// Inventory 3
recipes.addShaped("eio_solar_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2", "enderio:enabled": 1 as byte}), [[<metaitem:cover.solar.panel.lv>, <ore:gregHardHammers>], [base, circuits[5]]]);

// Inventory 4
recipes.addShaped("eio_solar_upgrade_4", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3", "enderio:enabled": 1 as byte}), [[field_generators[3], <ore:gregHardHammers>], [base, circuits[6]]]);


// Sound Locator
recipes.addShaped("eio_sound_locator_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, sensors[1]]]);


// Speed Upgrades
// Speed 1
recipes.addShaped("eio_speed_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost1", "enderio:enabled": 1 as byte}), [[<ore:gearSmallSteel>, <ore:gregHardHammers>], [base, motors[1]]]);

// Speed 2
recipes.addShaped("eio_speed_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost2", "enderio:enabled": 1 as byte}), [[<ore:gearSmallStainlessSteel>, <ore:gregHardHammers>], [base, motors[3]]]);

// Speed 3
recipes.addShaped("eio_speed_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3", "enderio:enabled": 1 as byte}), [[<ore:gearSmallTungstenSteel>, <ore:gregHardHammers>], [base, motors[4]]]);


// Spoon
recipes.addShaped("eio_spoon_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon", "enderio:enabled": 1 as byte}), [[<ore:gearSmallSteel>, <ore:gregHardHammers>], [base, <ore:toolHeadShovelStainlessSteel>]]);


// Step Assist
recipes.addShaped("eio_step_assist_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:step_assist", "enderio:enabled": 1 as byte}), [[null, <ore:gregHardHammers>], [base, motors[1]]]);


// Flippers
recipes.addShaped("eio_step_flippers_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:swim", "enderio:enabled": 1 as byte}), [[<ore:plateRubber>, <ore:gregHardHammers>], [base, <ore:plateRubber>]]);


// Travel
recipes.addShaped("eio_step_travel_upgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel", "enderio:enabled": 1 as byte}), [[<ore:itemEnderCrystal>, <ore:gregHardHammers>], [base, circuits[1]]]);


// Explosive Upgrades
// Explosive 1
recipes.addShaped("eio_step_explosive_upgrade_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt", "enderio:enabled": 1 as byte}), [[<ore:gearSteel>, <ore:gregHardHammers>], [base, <appliedenergistics2:tiny_tnt>]]);

// Explosive 2
recipes.addShaped("eio_step_explosive_upgrade_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1", "enderio:enabled": 1 as byte}), [[<ore:gearBlackBronze>, <ore:gregHardHammers>], [base, <minecraft:tnt>]]);

// Explosive 3
recipes.addShaped("eio_step_explosive_upgrade_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2", "enderio:enabled": 1 as byte}), [[<ore:gearTungstenSteel>, <ore:gregHardHammers>], [base, <minecraft:tnt>]]);

// Explosive 4
recipes.addShaped("eio_step_explosive_upgrade_4", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3", "enderio:enabled": 1 as byte}), [[<ore:gearNaquadahAlloy>, <ore:gregHardHammers>], [base, <minecraft:tnt>]]);

// Explosive 5
recipes.addShaped("eio_step_explosive_upgrade_5", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4", "enderio:enabled": 1 as byte}), [[<ore:gearAbyssalAlloy>, <ore:gregHardHammers>], [base, <minecraft:tnt>]]);


// Dark Steel Helmet
assembler.recipeBuilder()
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 5)
	.inputs(<ore:foilPlastic> * 5)
	.inputs(<ore:wireFineCopper> * 10)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_dark_steel_helmet>)
        .property("circuit", 0)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Steel Chestplate
assembler.recipeBuilder()
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 8)
	.inputs(<ore:foilPlastic> * 8)
	.inputs(<ore:wireFineCopper> * 10)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
    .property("circuit", 1)
	.outputs(<enderio:item_dark_steel_chestplate>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Steel Leggings
assembler.recipeBuilder()
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 7)
	.inputs(<ore:foilPlastic> * 7)
	.inputs(<ore:wireFineCopper> * 10)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_dark_steel_leggings>)
        .property("circuit", 2)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Steel Boots
assembler.recipeBuilder()
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 4)
	.inputs(<ore:foilPlastic> * 4)
	.inputs(<ore:wireFineCopper> * 10)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_dark_steel_boots>)
        .property("circuit", 3)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// The Ender
assembler.recipeBuilder()
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 2)
	.inputs(<ore:stickAluminium>)
	.inputs(<ore:foilPlastic> * 4)
	.inputs(<ore:wireFineCopper> * 10)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_dark_steel_sword>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Shield
assembler.recipeBuilder()
	.inputs(circuits[2])
	.inputs(<ore:plateDarkSteel> * 5)
	.inputs(<ore:foilPlastic> * 4)
	.inputs(<ore:wireFineCopper> * 4)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_dark_steel_shield>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Bow
assembler.recipeBuilder()
	.inputs(circuits[2] * 2)
	.inputs(<ore:stickAluminium> * 2)
	.inputs(emitters[2])
	.inputs(<ore:foilPlastic> * 4)
	.inputs(<ore:wireFineCopper> * 10)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_dark_steel_bow>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Pick
assembler.recipeBuilder()
	.circuit(0)
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 3)
	.inputs(<ore:stickAluminium> * 2)
	.inputs(<ore:foilPlastic> * 4)
	.inputs(<ore:wireFineCopper> * 10)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_dark_steel_pickaxe>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Axe
assembler.recipeBuilder()
	.circuit(1)
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 3)
	.inputs(<ore:stickAluminium> * 2)
	.inputs(<ore:foilPlastic> * 4)
	.inputs(<ore:wireFineCopper> * 10)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_dark_steel_axe>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

// Dark Crook
assembler.recipeBuilder()
	.circuit(2)
	.inputs(circuits[2] * 2)
	.inputs(<ore:plateDarkSteel> * 3)
	.inputs(<ore:stickAluminium> * 3)
	.inputs(<ore:foilPlastic> * 4)
	.inputs(<ore:wireFineCopper> * 10)
    .inputs(<ore:screwDarkSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_dark_steel_crook>)
	.EUt(96)
	.duration(100)
	.buildAndRegister();

# End Steel Armor and Arms

// End Steel Helmet
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 5)
	.inputs(<ore:foilPolyphenyleneSulfide> * 5)
	.inputs(<ore:wireFineElectrum> * 10)
    .inputs(<ore:screwEndSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_end_steel_helmet>)
        .property("circuit", 0)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// End Steel Chestplate
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 8)
	.inputs(<ore:foilPolyphenyleneSulfide> * 8)
	.inputs(<ore:wireFineElectrum> * 10)
    .inputs(<ore:screwEndSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_end_steel_chestplate>)
        .property("circuit", 1)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// End Steel Leggings
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 7)
	.inputs(<ore:foilPolyphenyleneSulfide> * 7)
	.inputs(<ore:wireFineElectrum> * 10)
    .inputs(<ore:screwEndSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_end_steel_leggings>)
        .property("circuit", 2)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// End Steel Boots
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 4)
	.inputs(<ore:foilPolyphenyleneSulfide> * 4)
	.inputs(<ore:wireFineElectrum> * 10)
    .inputs(<ore:screwEndSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_end_steel_boots>)
        .property("circuit", 3)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// The Ender Mk2
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 2)
	.inputs(<ore:stickStainlessSteel>)
	.inputs(<ore:foilPolyphenyleneSulfide> * 4)
	.inputs(<ore:wireFineElectrum> * 10)
    .inputs(<ore:screwEndSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_end_steel_sword>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// End Steel Shield
assembler.recipeBuilder()
	.inputs(circuits[3] * 1)
	.inputs(<ore:plateEndSteel> * 5)
	.inputs(<ore:foilPolyphenyleneSulfide> * 4)
	.inputs(<ore:wireFineElectrum> * 8)
    .inputs(<ore:screwEndSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_end_steel_shield>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Ender Bow
assembler.recipeBuilder()
	.inputs(circuits[3] * 2)
	.inputs(<ore:stickInvar> * 2)
	.inputs(emitters[3])
	.inputs(<ore:foilPolyphenyleneSulfide> * 4)
	.inputs(<ore:wireFineElectrum> * 10)
    .inputs(<ore:screwEndSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_end_steel_bow>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Ender Pickaxe
assembler.recipeBuilder()
	.circuit(0)
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 3)
	.inputs(<ore:stickStainlessSteel> * 2)
	.inputs(<ore:foilPolyphenyleneSulfide> * 4)
	.inputs(<ore:wireFineElectrum> * 10)
    .inputs(<ore:screwEndSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_end_steel_pickaxe>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

// Ender Axe
assembler.recipeBuilder()
	.circuit(1)
	.inputs(circuits[3] * 2)
	.inputs(<ore:plateEndSteel> * 3)
	.inputs(<ore:foilPolyphenyleneSulfide> * 4)
	.inputs(<ore:wireFineElectrum> * 10)
    .inputs(<ore:screwEndSteel> * 4)
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_end_steel_axe>)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

# Stellar Alloy(Steel?) Armor and Arms

// Stellar Helmet
assembler.recipeBuilder()
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 5)
	.inputs(<ore:foilPolybenzimidazole> * 5)
	.inputs(<ore:wireFineIridium> * 10)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(field_generators[6])
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_stellar_alloy_helmet>)
        .property("circuit", 0)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// Stellar Chestplate
assembler.recipeBuilder()
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 8)
	.inputs(<ore:foilPolybenzimidazole> * 8)
	.inputs(<ore:wireFineIridium> * 10)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(field_generators[6])
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_stellar_alloy_chestplate>)
        .property("circuit", 1)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// Stellar Leggings
assembler.recipeBuilder()
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 7)
	.inputs(<ore:foilPolybenzimidazole> * 7)
	.inputs(<ore:wireFineIridium> * 10)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(field_generators[6])
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_stellar_alloy_leggings>)
        .property("circuit", 2)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// Stellar Boots
assembler.recipeBuilder()
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 4)
	.inputs(<ore:foilPolybenzimidazole> * 4)
	.inputs(<ore:wireFineIridium> * 10)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(<gtadditions:ga_meta_item:32454> * 2)
    .inputs(field_generators[6])
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_stellar_alloy_boots>)
        .property("circuit", 3)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// The Ender Mark IV
assembler.recipeBuilder()
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 2)
	.inputs(<ore:foilSiliconRubber> * 4)
	.inputs(<ore:stickTungstenSteel>)
	.inputs(<ore:wireFineIridium> * 10)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(field_generators[6])
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_stellar_alloy_sword>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// Stellar Pickaxe
assembler.recipeBuilder()
    .circuit(0)
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 3)
	.inputs(<ore:foilSiliconRubber> * 4)
	.inputs(<ore:stickTungstenSteel> * 2)
	.inputs(<ore:wireFineIridium> * 10)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(field_generators[6])
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_stellar_alloy_pickaxe>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();

// Stellar Axe
assembler.recipeBuilder()
    .circuit(1)
	.inputs(circuits[5] * 2)
	.inputs(<ore:plateStellarAlloy> * 3)
	.inputs(<ore:foilSiliconRubber> * 4)
	.inputs(<ore:stickTungstenSteel> * 2)
	.inputs(<ore:wireFineIridium> * 10)
    .inputs(<ore:screwStellarAlloy> * 4)
    .inputs(field_generators[6])
    .fluidInputs([<fluid:soldering_alloy> * 576])
	.outputs(<enderio:item_stellar_alloy_axe>)
	.EUt(1920)
	.duration(100)
	.buildAndRegister();