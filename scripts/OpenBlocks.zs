//Add Block Breaker recipe
recipes.remove(<openblocks:block_breaker>);
recipes.addShaped("Block Breaker", <openblocks:block_breaker>,
 [[<gregtech:meta_plate:335>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>],
  [<minecraft:iron_pickaxe>,<minecraft:redstone_block>,<gregtech:meta_plate:51>],
  [<gregtech:meta_plate:335>,<gregtech:meta_plate:51>,<gregtech:meta_plate:51>]]);

//Remove tank
mods.jei.JEI.removeAndHide(<openblocks:tank>);
