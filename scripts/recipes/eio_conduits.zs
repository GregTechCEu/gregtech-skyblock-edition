import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.chisel.Carving;

// Remove Regular Fluid Conduits
mods.jei.JEI.hide(<enderio:item_liquid_conduit>);

// Big Item Filter
val filter_screws = [<ore:screwWroughtIron>, <ore:screwSteel>, <ore:screwAluminium>, <ore:screwStainlessSteel>] as IIngredient[];
for i in 0 to 4 {
    recipes.addShaped("eio_big_filter" ~ i, <enderio:item_big_item_filter> * pow(2, i), [
        [filter_screws[i], <ore:paper>, filter_screws[i]], 
        [<ore:paper>, tieredPlates[i], <ore:paper>],
        [filter_screws[i], <ore:paper>, filter_screws[i]]
    ]);
}

// Advanced Big Item Filter Upgrade
recipes.addShaped("eio_advanced_big_filter_upgrade", <enderio:item_big_advanced_item_filter>, [[<ore:foilElectrum>, <ore:foilElectrum>, <ore:foilElectrum>], [<ore:foilElectrum>, <enderio:item_big_item_filter>, <ore:foilElectrum>], [<ore:foilElectrum>, <ore:foilElectrum>, <ore:foilElectrum>]]);

// Advanced Big Item Filter Direct
recipes.addShaped("eio_advanced_big_filter", <enderio:item_big_advanced_item_filter> * 8, [[filter_screws[3], <minecraft:shulker_shell>, filter_screws[3]], [<ore:foilGold>, <enderio:item_big_item_filter>, <ore:foilGold>], [filter_screws[3], <minecraft:shulker_shell>, filter_screws[3]]]);

// Limited Item Filter
val filter_bars = [<ore:barsIron>, <enderio:block_dark_iron_bars>, <enderio:block_end_iron_bars>] as IIngredient[];

for i in 0 to filter_bars.length {
    recipes.addShaped("eio_limited_filter" ~ i, <enderio:item_limited_item_filter> * pow(2, i), [[<ore:foilRedAlloy>, filter_bars[i], <ore:foilRedAlloy>], [filter_bars[i], tieredPlates[1], filter_bars[i]], [<ore:foilRedAlloy>, filter_bars[i], <ore:foilRedAlloy>]]);
}

// Existing Item Filter
recipes.addShaped("eio_exsting_filter", <enderio:item_existing_item_filter>, [[null, <ore:wireRedAlloy>, null], [<ore:foilRedAlloy>, tieredPlates[1], <ore:foilRedAlloy>], [null, <ore:wireRedAlloy>, null]]);

// Power Item Filter
recipes.addShaped("eio_power_filter", <enderio:item_power_item_filter>, [[null, tieredPlates[0], null], [tieredPlates[0], <ore:stickLongIronMagnetic>, tieredPlates[0]], [null, tieredPlates[0], null]]);

// Mod Item Filter
recipes.addShaped("eio_mod_filter", <enderio:item_mod_item_filter>, [[null, tieredPlates[0], null], [tieredPlates[0], <ore:lensGlass>, tieredPlates[0]], [null, tieredPlates[0], null]]);

// Fluid Filter
recipes.addShapeless("eio_fluid_filter", <enderio:item_fluid_filter>, [<metaitem:fluid_filter>]);
recipes.addShaped("eio_fluid_filter_revert", <metaitem:fluid_filter>, [[<enderio:item_fluid_filter>]]);

// Enchantment Filter
recipes.addShaped("eio_enchant_filter", <enderio:item_enchantment_filter_big>, [[<enderio:item_big_item_filter>, <minecraft:book>]]);

// Redstone Filters
val redstone_filters as IItemStack[] = [
    <enderio:item_redstone_not_filter>,
    <enderio:item_redstone_or_filter>,
    <enderio:item_redstone_and_filter>,
    <enderio:item_redstone_nor_filter>,
    <enderio:item_redstone_nand_filter>,
    <enderio:item_redstone_xor_filter>,
    <enderio:item_redstone_xnor_filter>,
    <enderio:item_redstone_toggle_filter>,
    <enderio:item_redstone_sensor_filter>,
    <enderio:item_redstone_timer_filter>,
    <enderio:item_redstone_counting_filter>
];
Carving.addGroup("eio_filters");

for i in redstone_filters {
    Carving.addVariation("eio_filters", i);
    recipes.remove(i);
}

// Not Filter
recipes.addShaped("eio_not_filter", redstone_filters[0], [[null, <ore:wireFineRedAlloy>, null], [<ore:wireFineRedAlloy>, tieredPlates[1], <ore:wireFineRedAlloy>], [null, <ore:wireFineRedAlloy>, null]]);

// Big Soul Filter
recipes.addShaped("eio_soul_filter", <enderio:item_soul_filter_big>, [[<enderio:item_big_item_filter>, <enderio:item_soul_vial>]]);

// Facade
recipes.addShaped("eio_conduit_facade", <enderio:item_conduit_facade> * 4, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:itemConduitBinder>, <ore:roundSteel>, <ore:itemConduitBinder>], [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

// Hardened Facade
recipes.addShapeless("eio_conduit_facade_hardened", <enderio:item_conduit_facade:1>, [<enderio:item_conduit_facade>, <ore:plateWroughtIron>]);

// Conduits

// ULV
assembler.recipeBuilder().EUt(8).duration(150)
    .inputs(<ore:itemConduitBinder> * 4)
    .inputs(<ore:boltWroughtIron>)
    .outputs(<enderio:item_endergy_conduit> * 4)
    .buildAndRegister();

val conduit = <enderio:item_endergy_conduit>.definition;
val alt_conduit = <enderio:item_power_conduit>.definition;

// LV-LuV
for i in 1 to 7 {
    recipes.remove(conduit.makeStack(i));
    assembler.recipeBuilder().EUt(8).duration(150)
        .inputs(<ore:itemConduitBinder> * pow(2, i))
        .inputs(<ore:foilPlastic> * 4)
        .inputs(superconductors[i])
        .outputs(conduit.makeStack(i) * 8)
        .buildAndRegister();
}

// ZPM-UHV
for i in 7 to 9 {
    recipes.remove(conduit.makeStack(i));
    assembler.recipeBuilder().EUt(8).duration(150)
        .inputs(<ore:itemConduitBinder> * 64)
        .inputs(superconductors[i])
        .inputs(<ore:foilPolyetheretherketone> * 4)
        .outputs(conduit.makeStack(i) * 8)
        .buildAndRegister();
}

// UEV-UIV
for i in 0 to 3 {
    recipes.remove(alt_conduit.makeStack(i));
    assembler.recipeBuilder().EUt(8).duration(150)
        .inputs(<ore:itemConduitBinder> * 64)
        .inputs(superconductors[i + 9])        
        .inputs(<ore:foilZylon> * 4)
        .outputs(alt_conduit.makeStack(i) * 8)
        .buildAndRegister();
}

// UMV-MAX
for i in 12 to 15 {
    recipes.remove(conduit.makeStack(i - 3));
    assembler.recipeBuilder().EUt(8).duration(150)
        .inputs(<ore:itemConduitBinder> * 64)
        .inputs(superconductors[i])        
        .inputs(<ore:foilFullerenePolymerMatrix> * 4)
        .outputs(conduit.makeStack(i - 3) * 8)
        .buildAndRegister();
}

// Item Conduits
val conduit_foils = [<ore:foilPolycaprolactam> * 16, <ore:foilPolytetrafluoroethylene> * 16, <ore:foilSiliconRubber> * 16] as IIngredient[];
for i in 1 to 4 {
    assembler.recipeBuilder().EUt(8 * pow(4, i)).duration(400)
        .inputs(<ore:itemConduitBinder> * (16 * (i + 1)))
        .inputs(conveyors[i])   
        .inputs(conduit_foils[i - 1])     
        .outputs(<enderio:item_item_conduit> * (16 * (i + 1)))
        .buildAndRegister();
}

// Ender Fluid Conduits
for i in 1 to 4 {
    assembler.recipeBuilder().EUt(8 * pow(4, i)).duration(400)
        .inputs(<ore:itemConduitBinder> * (16 * (i + 1)))
        .inputs(pumps[i])   
        .inputs(conduit_foils[i - 1])     
        .outputs(<enderio:item_liquid_conduit:2> * (16 * (i + 1)))
        .buildAndRegister();
}

// Redstone Conduit
assembler.recipeBuilder().EUt(8).duration(150)
    .inputs(<ore:itemConduitBinder> * 4)
    .inputs(<ore:wireGtSingleRedAlloy>)   
    .outputs(<enderio:item_redstone_conduit>)
    .buildAndRegister();

// OC Conduit
recipes.addShaped("eio_oc_conduit", <enderio:item_opencomputers_conduit>, [[null, <ore:cableGtDoubleGold>]]);

// ME Conduit
recipes.addShapeless("eio_me_conduit", <enderio:item_me_conduit>, [<appliedenergistics2:part:16>]);

recipes.addShapeless("eio_me_conduit_reverse", <appliedenergistics2:part:16>, [<enderio:item_me_conduit>]);

// Pressurized Fluid Conduit
recipes.addShaped("eio_pressurized_fluid_conduit", <enderio:item_liquid_conduit:1> * 6, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

// Speed Upgrade
for i in 1 to 4 {
    recipes.addShaped("eio_conduit_speed_upgrade" ~ (i - 1), <enderio:item_extract_speed_upgrade> * pow(2, i), [[tieredPlates[i], filter_bars[i - 1], tieredPlates[i]], [filter_bars[i - 1], motors[i], filter_bars[i - 1]], [tieredPlates[i], filter_bars[i - 1], tieredPlates[i]]]);
}

// Speed Downgrade
recipes.addShaped("eio_conduit_speed_downgrade", <enderio:item_extract_speed_downgrade>, [[<enderio:item_extract_speed_upgrade>]]);
recipes.addShaped("eio_conduit_speed_downgrade_revert", <enderio:item_extract_speed_upgrade>, [[<enderio:item_extract_speed_downgrade>]]);