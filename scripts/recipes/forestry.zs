//Carpenter Recipes
mods.forestry.Carpenter.removeRecipe(<forestry:hardened_machine>);
mods.forestry.Carpenter.addRecipe(<forestry:hardened_machine>, [
[<ore:plateDiamond>,<ore:plateDiamond>,<ore:plateDiamond>],
[<ore:plateDiamond>,<genetics:misc>,<ore:plateDiamond>],
[<ore:plateDiamond>,<ore:plateDiamond>,<ore:plateDiamond>]],
 25, <liquid:water>*5000);

mods.forestry.Carpenter.removeRecipe(<forestry:portable_alyzer>);
mods.forestry.Carpenter.addRecipe(<forestry:portable_alyzer>, [
[<ore:plateTin>,<ore:plateDiamond>,<ore:plateTin>],
[<ore:plateTin>,<ore:plateGlass>,<ore:plateTin>],
[<ore:dustRedstone>,<ore:circuitGood>,<ore:dustRedstone>]],
 25, <liquid:water>*2000);

mods.forestry.Carpenter.removeRecipe(<botany:database>);
mods.forestry.Carpenter.addRecipe(<botany:database>, [
[<ore:screwGold>,<ore:plateDiamond>,<ore:screwGold>],
[<ore:plateGold>,<ore:circuitAdvanced>,<ore:plateGold>],
[<ore:screwGold>,<ore:plateEmerald>,<ore:screwGold>]],
 25, <liquid:water>*2000,< forestry:portable_alyzer>);

mods.forestry.Carpenter.removeRecipe(<extrabees:dictionary>);
mods.forestry.Carpenter.addRecipe(<extrabees:dictionary>, [
[<ore:screwGold>,<ore:plateDiamond>,<ore:screwGold>],
[<ore:plateTin>,<ore:circuitAdvanced>,<ore:plateTin>],
[<ore:screwGold>,<ore:plateEmerald>,<ore:screwGold>]],
 25, <liquid:water>*2000,< forestry:portable_alyzer>);

mods.forestry.Carpenter.removeRecipe(<extratrees:databasetree>);
mods.forestry.Carpenter.addRecipe(<extratrees:databasetree>, [
[<ore:screwGold>,<ore:plateDiamond>,<ore:screwGold>],
[<ore:plateCopper>,<ore:circuitAdvanced>,<ore:plateCopper>],
[<ore:screwGold>,<ore:plateEmerald>,<ore:screwGold>]],
 25, <liquid:water>*2000,< forestry:portable_alyzer>);

mods.forestry.Carpenter.removeRecipe(<genetics:geneticdatabase>);
mods.forestry.Carpenter.addRecipe(<genetics:geneticdatabase>, [
[<ore:screwDiamond>,<ore:plateObsidian>,<ore:screwDiamond>],
[<ore:plateDiamond>,<ore:circuitAdvanced>,<ore:plateDiamond>],
[<ore:screwDiamond>,<ore:plateEnderEye>,<ore:screwDiamond>]],
 25, <liquid:water>*2000,< forestry:portable_alyzer>);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets>, [
[<ore:screwTin>,<ore:plateTin>,<ore:screwTin>],
[<ore:circuitBasic>,<ore:plateTin>,<ore:circuitBasic>],
[<ore:screwTin>,<ore:plateTin>,<ore:screwTin>]],
 25, <liquid:water>*1000);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:1>, [
[<ore:screwCupronickel>,<ore:plateCupronickel>,<ore:screwCupronickel>],
[<ore:circuitGood>,<ore:plateCupronickel>,<ore:circuitGood>],
[<ore:screwCupronickel>,<ore:plateCupronickel>,<ore:screwCupronickel>]],
 25, <liquid:water>*1000);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:2>, [
[<ore:screwVanadiumSteel>,<ore:plateVanadiumSteel>,<ore:screwVanadiumSteel>],
[<ore:circuitAdvanced>,<ore:plateVanadiumSteel>,<ore:circuitAdvanced>],
[<ore:screwVanadiumSteel>,<ore:plateVanadiumSteel>,<ore:screwVanadiumSteel>]],
 25, <liquid:water>*1000);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:3>);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:3>, [
[<ore:screwRoseGold>,<ore:plateRoseGold>,<ore:screwRoseGold>],
[<ore:circuitExtreme>,<ore:plateRoseGold>,<ore:circuitExtreme>],
[<ore:screwRoseGold>,<ore:plateRoseGold>,<ore:screwRoseGold>]],
 25, <liquid:water>*1000);

mods.forestry.Carpenter.removeRecipe(<forestry:kit_shovel>);
mods.forestry.Carpenter.removeRecipe(<forestry:kit_pickaxe>);


//Forestry
//Gregification
recipes.remove(<forestry:pipette>);
recipes.addShaped(<forestry:pipette>,[
[null,null,<ore:wool>],
[null,<ore:plateGlass>],
[<ore:plateGlass>,<gregtech:meta_tool:9>]
]);

recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>,[
[<ore:plateBrass>,<ore:plateBrass>,<ore:plateBrass>],
[<ore:plateBrass>,<gregtech:meta_tool:8>,<ore:plateBrass>],
[<ore:plateBrass>,<ore:plateBrass>,<ore:plateBrass>]
]);


recipes.remove(<forestry:naturalist_helmet>);
recipes.addShaped(<forestry:naturalist_helmet>,[
[<gregtech:meta_tool:9>,<ore:stickLongWroughtIron>,<gregtech:meta_tool:6>],
[<ore:lensGlass>,<gtadditions:ga_meta_tool:1>,<ore:lensGlass>]
]);

recipes.remove(<forestry:genetic_filter>);
recipes.addShaped(<forestry:genetic_filter>*3,[
[<ore:plateWood>,<ore:plateDiamond>,<ore:plateWood>],
[<forestry:propolis:*>,<ore:plateGlass>,<forestry:propolis:*>],
[<ore:gearBronze>,<ore:plateDiamond>,<ore:gearBronze>]
]);
recipes.addShaped(<forestry:genetic_filter>*3,[
[<ore:plateWood>,<ore:plateDiamond>,<ore:plateWood>],
[<ore:fruitForestry>,<ore:plateGlass>,<ore:fruitForestry>],
[<ore:gearBronze>,<ore:plateDiamond>,<ore:gearBronze>]
]);

recipes.remove(<forestry:engine_clockwork>);
recipes.addShaped(<forestry:engine_clockwork>,[
[null,<ore:plateLapis>],
[<ore:plateBrass>,<ore:springBrass>,<ore:plateBrass>],
[<ore:gearBrass>,<minecraft:piston>,<ore:gearBrass>]
]);

recipes.remove(<forestry:engine_biogas>);
recipes.addShaped(<forestry:engine_biogas>,[
[null,<ore:plateLapis>],
[<ore:plateBronze>,<ore:springBronze>,<ore:plateBronze>],
[<ore:gearBronze>,<minecraft:piston>,<ore:gearBronze>]
]);

recipes.remove(<forestry:engine_peat>);
recipes.addShaped(<forestry:engine_peat>,[
[null,<ore:plateLapis>],
[<ore:plateCopper>,<ore:springCopper>,<ore:plateCopper>],
[<ore:gearCopper>,<minecraft:piston>,<ore:gearCopper>]
]);

recipes.remove(<forestry:fabricator>);
recipes.addShaped(<forestry:fabricator>,[
[<ore:plateSteel>,<ore:plateTin>,<ore:plateSteel>],
[<ore:wireGtQuadrupleCopper>,<forestry:sturdy_machine>,<ore:wireGtQuadrupleCopper>],
[<ore:plateSteel>,<minecraft:chest>,<ore:plateSteel>]
]);

recipes.remove(<forestry:bog_earth>);
recipes.remove(<forestry:humus>);

recipes.remove(<forestry:carpenter>);
recipes.addShaped(<forestry:carpenter>,[
[<ore:plateBronze>,<ore:circuitBasic>,<ore:plateBronze>],
[<ore:gearBronze>,<forestry:sturdy_machine>,<ore:gearBronze>],
[<ore:plateBronze>,<ore:circuitBasic>,<ore:plateBronze>]
]);

recipes.remove(<forestry:moistener>);
recipes.addShaped(<forestry:moistener>,[
[<ore:plateCopper>,<ore:circuitBasic>,<ore:plateCopper>],
[<ore:gearCopper>,<forestry:sturdy_machine>,<ore:gearCopper>],
[<ore:plateCopper>,<ore:circuitBasic>,<ore:plateCopper>]
]);

recipes.remove(<forestry:mailbox>);
recipes.addShaped(<forestry:mailbox>,[
[<ore:plateTin>,<minecraft:chest>,<ore:plateTin>],
[<minecraft:chest>,<forestry:sturdy_machine>,<minecraft:chest>],
[<ore:plateTin>,<ore:plateTin>,<ore:plateTin>]
]);

recipes.remove(<forestry:analyzer>);
recipes.addShaped(<forestry:analyzer>,[
[<ore:plateTin>,<forestry:portable_alyzer>,<ore:plateTin>],
[<gregtech:meta_item_1:32690>,<forestry:sturdy_machine>,<gregtech:meta_item_1:32690>],
[<ore:plateTin>,<ore:plateTin>,<ore:plateTin>]
]);

recipes.remove(<botany:trowel_iron>);
recipes.addShaped(<botany:trowel_iron>,[
[<gregtech:meta_tool:6>,<ore:plateIron>],
[<ore:stickWood>,<gregtech:meta_tool:9>]
]);

recipes.remove(<botany:trowel_gold>);
recipes.addShaped(<botany:trowel_gold>,[
[<gregtech:meta_tool:6>,<ore:plateGold>],
[<ore:stickWood>,<gregtech:meta_tool:9>]
]);

recipes.remove(<botany:trowel_diamond>);
recipes.addShaped(<botany:trowel_diamond>,[
[<gregtech:meta_tool:6>,<ore:plateDiamond>],
[<ore:stickWood>,<gregtech:meta_tool:9>]
]);

recipes.remove(<binniecore:field_kit>);
recipes.addShapeless(<binniecore:field_kit>,[<gregtech:meta_tool:36>.noReturn(),<ore:dyeBlack>,<minecraft:paper>]);

recipes.remove(<botany:soil_meter>);
recipes.addShaped(<botany:soil_meter>,[
[null,<minecraft:redstone>,<ore:plateGold>],
[null,<ore:plateGold>,<gregtech:meta_tool:6>],
[<ore:stickIron>]
]);

recipes.remove(<genetics:misc>);
recipes.addShaped(<genetics:misc>,[
[<ore:plateWroughtIron>,<ore:plateTin>,<ore:plateWroughtIron>],
[<ore:plateTin>,<forestry:sturdy_machine>,<ore:plateTin>],
[<ore:plateWroughtIron>,<ore:plateTin>,<ore:plateWroughtIron>]
]);

recipes.remove(<extratrees:machine:6>);
recipes.addShaped(<extratrees:machine:6>,[
[<ore:plateCopper>,<ore:blockGlass>,<ore:plateCopper>],
[<ore:circuitBasic>,<forestry:sturdy_machine>,<ore:circuitBasic>],
[<ore:plateCopper>,<ore:gearCopper>,<ore:plateCopper>]
]);

recipes.remove(<extratrees:machine:4>);
recipes.addShaped(<extratrees:machine:4>,[
[<ore:plateTin>,<gregtech:meta_item_1:32640>,<ore:plateTin>],
[<ore:circuitBasic>,<forestry:sturdy_machine>,<ore:circuitBasic>],
[<ore:plateTin>,<ore:gearTin>,<ore:plateTin>]
]);

recipes.remove(<extratrees:machine:5>);
recipes.addShaped(<extratrees:machine:5>,[
[<ore:plateBronze>,<ore:blockGlass>,<ore:plateBronze>],
[<ore:circuitBasic>,<forestry:sturdy_machine>,<ore:circuitBasic>],
[<ore:plateBronze>,<ore:gearBronze>,<ore:plateBronze>]
]);

recipes.remove(<forestry:rainmaker>);
recipes.addShaped(<forestry:rainmaker>,[
[null,<gregtech:meta_item_1:32613>],
[null,<ore:blockGlass>],
[<ore:plateIridium>,<forestry:hardened_machine>,<ore:plateIridium>]
]);

recipes.remove(<extrabees:alveary:3>);
recipes.addShaped(<extrabees:alveary:3>,[
[<ore:plateGold>,<forestry:thermionic_tubes:5>,<ore:plateGold>],
[<ore:plateUranium>,<forestry:alveary.plain>,<ore:plateUranium>],
[<ore:plateGold>,<forestry:thermionic_tubes:5>,<ore:plateGold>]
]);

recipes.remove(<forestry:alveary.fan>);
recipes.addShaped(<forestry:alveary.fan>,[
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
[<ore:rotorSteel>,<forestry:alveary.plain>,<ore:rotorSteel>],
[<ore:plateIron>,<forestry:thermionic_tubes:4>,<ore:plateIron>]
]);

recipes.remove(<forestry:alveary.heater>);
recipes.addShaped(<forestry:alveary.heater>,[
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
[<forestry:thermionic_tubes:4>,<forestry:alveary.plain>,<forestry:thermionic_tubes:4>],
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
]);

recipes.remove(<extrabees:alveary>);
recipes.addShaped(<extrabees:alveary>,[
[<forestry:oak_stick>,<forestry:oak_stick>,<forestry:oak_stick>],
[<forestry:thermionic_tubes:4>,<forestry:alveary.plain>,<forestry:thermionic_tubes:4>],
[<forestry:oak_stick>,<forestry:thermionic_tubes:4>,<forestry:oak_stick>]
]);

recipes.remove(<forestry:alveary.swarmer>);
recipes.addShaped(<forestry:alveary.swarmer>,[
[<forestry:thermionic_tubes:5>,<ore:plateGold>,<forestry:thermionic_tubes:5>],
[<ore:plateGold>,<forestry:alveary.plain>,<ore:plateGold>],
[<forestry:thermionic_tubes:5>,<ore:plateGold>,<forestry:thermionic_tubes:5>]
]);

recipes.remove(<forestry:fertilizer_compound>);
recipes.addShaped(<forestry:fertilizer_compound>*4,[
[<ore:sand>],
[<ore:dustApatite>],
[<ore:sand>]
]);
recipes.addShaped(<forestry:fertilizer_compound>*8,[
[<ore:dustAsh>,<ore:dustAsh>,<ore:dustAsh>],
[<ore:dustAsh>,<ore:dustApatite>,<ore:dustAsh>],
[<ore:dustAsh>,<ore:dustAsh>,<ore:dustAsh>]
]);

recipes.remove(<forestry:grafter>);
recipes.addShaped(<forestry:grafter>,[
[null,<gregtech:meta_tool:6>,<ore:ingotBronze>],
[null,<ore:stickWood>,<gregtech:meta_tool:9>],
[<ore:stickWood>]
]);


//Removal
mods.jei.JEI.removeAndHide(<forestry:bottler>);
mods.jei.JEI.removeAndHide(<forestry:centrifuge>);
mods.jei.JEI.removeAndHide(<forestry:fermenter>);
mods.jei.JEI.removeAndHide(<forestry:squeezer>);
mods.jei.JEI.removeAndHide(<forestry:still>);
mods.jei.JEI.removeAndHide(<forestry:gear_bronze>);
mods.jei.JEI.removeAndHide(<forestry:gear_copper>);
mods.jei.JEI.removeAndHide(<forestry:gear_tin>);
mods.jei.JEI.removeAndHide(<forestry:scoop>);
mods.jei.JEI.removeAndHide(<extratrees:machine>);
mods.jei.JEI.removeAndHide(<forestry:wrench>);
mods.jei.JEI.removeAndHide(<forestry:raintank>);
mods.jei.JEI.removeAndHide(<forestry:fabricator>);
mods.jei.JEI.removeAndHide(<binniecore:storage:*>);
mods.jei.JEI.removeAndHide(<botany:trowel_wood>);
mods.jei.JEI.removeAndHide(<botany:trowel_stone>);
mods.jei.JEI.removeAndHide(<forestry:bronze_shovel>);
mods.jei.JEI.removeAndHide(<forestry:bronze_pickaxe>);
mods.jei.JEI.removeAndHide(<forestry:kit_shovel>);
mods.jei.JEI.removeAndHide(<forestry:kit_pickaxe>);
