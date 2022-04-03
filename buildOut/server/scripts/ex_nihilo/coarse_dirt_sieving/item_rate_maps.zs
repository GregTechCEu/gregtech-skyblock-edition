// A list of items to sieve from Coarse Dirt along with their drop rates.

#priority 500

import crafttweaker.item.IItemStack;


static vanilla_pebbles as double[IItemStack] = {
    <exnihilocreatio:item_pebble:0> : 1.00, // Stone pebble
    <exnihilocreatio:item_pebble:1> : 0.60, // Granite Pebble.
    <exnihilocreatio:item_pebble:2> : 0.60, // Diorite Pebble.
    <exnihilocreatio:item_pebble:3> : 0.60, // Andesite Pebble.
};


static gt_pebbles as double[IItemStack] = {
    <gregification:gtpebble:0> : 0.20, // Basalt Pebble.
    <gregification:gtpebble:1> : 0.20, // Black Granite Pebble.
    <gregification:gtpebble:2> : 0.20, // Marble Pebble.
    <gregification:gtpebble:3> : 0.20, // Red Granite Pebble.
};


static seeds as double[IItemStack] = {
    ancient_spores as IItemStack : 0.05,
    grass_seeds    as IItemStack : 0.02,

    // Higher rate for spruce because it's found in Megataiga where there's coarse dirt.
    <exnihilocreatio:item_seed_spruce>  : 0.05,

    <exnihilocreatio:item_seed_oak>     : 0.02,
    <exnihilocreatio:item_seed_birch>   : 0.02,
    <exnihilocreatio:item_seed_jungle>  : 0.02,
    <exnihilocreatio:item_seed_acacia>  : 0.02,
    <exnihilocreatio:item_seed_darkoak> : 0.02,
};


static item_rate_maps as double[IItemStack][] = [
    vanilla_pebbles,
    gt_pebbles,
    seeds,
];