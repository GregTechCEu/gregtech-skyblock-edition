//Remove stuff
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
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_grinder>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_auto_sifter>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_axle_stone>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_waterwheel>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_crucible_wood>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:1>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:2>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:3>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:4>);
mods.jei.JEI.removeAndHide(<excompressum:heavy_sieve:5>);

//Add lava recipe to Fluid Extractor
extractor.recipeBuilder()
   .inputs(<minecraft:cobblestone>)
   .fluidOutputs(<liquid:lava>*250)
   .duration(100)
   .EUt(32)
   .buildAndRegister();

//Add Slime recipe to Mixer
mixer.recipeBuilder()
   .inputs(<minecraft:brown_mushroom>)
   .fluidInputs(<liquid:milk>*1000)
   .outputs(<minecraft:slime>)
   .duration(200)
   .EUt(8)
   .buildAndRegister();

mixer.recipeBuilder()
   .inputs(<minecraft:red_mushroom>)
   .fluidInputs(<liquid:milk>*1000)
   .outputs(<minecraft:slime>)
   .duration(200)
   .EUt(8)
   .buildAndRegister();

//remove ex nihilo porcelain clay since it conflicts with ceramics unfired porcelain and is functionally the same
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_material:1>);

//remove ex nihilo compressed flint since it conflicts with GTCEu block of flint and is functionally the same
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:5>);