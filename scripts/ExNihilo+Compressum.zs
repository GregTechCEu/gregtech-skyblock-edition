import crafttweaker.item.IItemStack;


var grass_seeds    = <exnihilocreatio:item_material:4>;
var ancient_spores = <exnihilocreatio:item_material:3>;

var sky_stone_dust    = <appliedenergistics2:material:45>;
var sky_stone_block   = <appliedenergistics2:sky_stone_block>;
var crushed_sky_stone = <exnihilocreatio:block_skystone_crushed>;


// Remove stuff.
mods.jei.JEI.removeAndHide(<excompressum:auto_hammer>);
mods.jei.JEI.removeAndHide(<excompressum:auto_compressed_hammer>);
mods.jei.JEI.removeAndHide(<excompressum:auto_sieve>);
mods.jei.JEI.removeAndHide(<excompressum:auto_heavy_sieve>);
mods.jei.JEI.removeAndHide(<excompressum:auto_compressor>);
mods.jei.JEI.removeAndHide(<excompressum:auto_compressor_rationing>);
mods.jei.JEI.removeAndHide(<excompressum:chicken_stick>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_wood>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_stone>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_iron>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_gold>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_hammer_diamond>);
mods.jei.JEI.removeAndHide(<excompressum:double_compressed_diamond_hammer>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_crook>);
mods.jei.JEI.removeAndHide(<excompressum:iron_mesh>);
mods.jei.JEI.removeAndHide(<excompressum:wood_chippings>);
mods.jei.JEI.removeAndHide(<excompressum:uncompressed_coal>);
mods.jei.JEI.removeAndHide(<excompressum:bat_zapper>);
mods.jei.JEI.removeAndHide(<excompressum:ore_smasher>);
mods.jei.JEI.removeAndHide(<excompressum:ugly_steel_plating>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:1>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:2>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:3>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:4>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:5>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_grinder>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_auto_sifter>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_axle_stone>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_waterwheel>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_crucible_wood>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_material:7>); // Stone gear.
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_ore_gold:0>); // Gold ore piece.
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_ore_gold:1>); // Gold ore chunk.
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_ore_iron:0>); // Gold ore piece.
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_ore_iron:1>); // Gold ore chunk.


// Remove ex nihilo porcelain clay since it conflicts with ceramics unfired porcelain and is functionally the same
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_material:1>);

// Remove ex nihilo compressed flint since it conflicts with GTCEu block of flint and is functionally the same
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:5>);


// Lava in Fluid Extractor.
extractor.recipeBuilder()
   .inputs(<minecraft:cobblestone>)
   .fluidOutputs(<liquid:lava>*250)
   .duration(100)
   .EUt(30)
   .buildAndRegister();

// Add Slime recipe to Mixer.
var mushrooms = [
	<minecraft:red_mushroom>,
	<minecraft:brown_mushroom>
] as IItemStack[];
for mushroom in mushrooms {
    mixer.recipeBuilder()
        .inputs(mushroom)
        .fluidInputs(<liquid:milk>*1000)
        .outputs(<minecraft:slime>)
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}


// Mycelium from ancient spores.
chemreactor.recipeBuilder()
    .inputs(<minecraft:dirt>*1)
    .inputs(ancient_spores*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:mycelium>*1)
    .duration(200)
    .EUt(7)
    .buildAndRegister();

// "Growing" mycelium.
chemreactor.recipeBuilder()
    .notConsumable(<minecraft:mycelium>*1)
    .inputs(<minecraft:dirt>*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:mycelium>*1)
    .duration(200)
    .EUt(7)
    .buildAndRegister();

// Grass from seeds.
chemreactor.recipeBuilder()
    .inputs(<minecraft:dirt>*1)
    .inputs(grass_seeds*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:grass>*1)
    .duration(200)
    .EUt(7)
    .buildAndRegister();

// "Growing" grass.
chemreactor.recipeBuilder()
    .notConsumable(<minecraft:grass>*1)
    .inputs(<minecraft:dirt>*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:grass>*1)
    .duration(200)
    .EUt(7)
    .buildAndRegister();


// Witchwater from mycelium.
chemreactor.recipeBuilder()
    .notConsumable(<minecraft:mycelium>*1)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:witchwater>*1000)
    .duration(200)
    .EUt(7)
    .buildAndRegister();

// Witchwater to recycle (unused) ancient spores.
chemreactor.recipeBuilder()
    .inputs(ancient_spores*1)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:witchwater>*1000)
    .duration(200)
    .EUt(7)
    .buildAndRegister();


// A bunch of recipes moved from barrels to GT machines.
// Soul Sand.
mixer.recipeBuilder()
    .inputs(<ore:sand>*1)
    .fluidInputs(<liquid:witchwater>*1000)
    .outputs(<minecraft:soul_sand>*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Clay block.
chemical_bath.recipeBuilder()
    .inputs(<exnihilocreatio:block_dust>*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:clay>*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Netherrack.
chemical_bath.recipeBuilder()
    .inputs(<minecraft:redstone>*1)
    .fluidInputs(<liquid:lava>*1000)
    .outputs(<minecraft:netherrack>*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// End stone.
chemical_bath.recipeBuilder()
    .inputs(<minecraft:glowstone_dust>*1)
    .fluidInputs(<liquid:lava>*1000)
    .outputs(<minecraft:end_stone>*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Sky stone.
mixer.recipeBuilder()
    .inputs(sky_stone_dust*1)
    .fluidInputs(<liquid:lava>*1000)
    .outputs(sky_stone_block*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Crushed sky stone.
forge_hammer.recipeBuilder()
    .inputs(sky_stone_block*1)
    .outputs(crushed_sky_stone*1)
    .duration(10)
    .EUt(16)
    .buildAndRegister();
