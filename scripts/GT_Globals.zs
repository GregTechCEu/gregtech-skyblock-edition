#priority 999

import mods.gregtech.recipe.RecipeMap;

global alloy_smelter     as RecipeMap = RecipeMap.getByName("alloy_smelter");
global assembler         as RecipeMap = RecipeMap.getByName("assembler");
global assembly_line     as RecipeMap = RecipeMap.getByName("assembly_line");
global attractor         as RecipeMap = RecipeMap.getByName("attractor");
global autoclave         as RecipeMap = RecipeMap.getByName("autoclave");
global blast_furnace     as RecipeMap = RecipeMap.getByName("blast_furnace");
global brewer            as RecipeMap = RecipeMap.getByName("brewer");
global canner            as RecipeMap = RecipeMap.getByName("canner");
global centrifuge        as RecipeMap = RecipeMap.getByName("centrifuge");
global chemical_bath     as RecipeMap = RecipeMap.getByName("chemical_bath");
global chemreactor       as RecipeMap = RecipeMap.getByName("chemical_reactor");
global circuit_assembler as RecipeMap = RecipeMap.getByName("circuit_assembler");
global compressor        as RecipeMap = RecipeMap.getByName("compressor");
global cutter            as RecipeMap = RecipeMap.getByName("cutter");
global distillery        as RecipeMap = RecipeMap.getByName("distillery");
global electrolyzer      as RecipeMap = RecipeMap.getByName("electrolyzer");
global engraver          as RecipeMap = RecipeMap.getByName("laser_engraver");
global extractor         as RecipeMap = RecipeMap.getByName("extractor");
global extruder          as RecipeMap = RecipeMap.getByName("extruder");
global fermenter         as RecipeMap = RecipeMap.getByName("fermenter");
global forming_press     as RecipeMap = RecipeMap.getByName("forming_press");
global freezer           as RecipeMap = RecipeMap.getByName("vacuum_freezer");
global fusion_reactor    as RecipeMap = RecipeMap.getByName("fusion_reactor");
global forge_hammer      as RecipeMap = RecipeMap.getByName("forge_hammer");
global implosion         as RecipeMap = RecipeMap.getByName("implosion_compressor");
global lathe             as RecipeMap = RecipeMap.getByName("lathe");
global macerator         as RecipeMap = RecipeMap.getByName("macerator");
global mixer             as RecipeMap = RecipeMap.getByName("mixer");
global packager          as RecipeMap = RecipeMap.getByName("packer");
global polarizer         as RecipeMap = RecipeMap.getByName("polarizer");
global pyro              as RecipeMap = RecipeMap.getByName("pyro");
global reactor           as RecipeMap = RecipeMap.getByName("chemical_reactor");
global sifter            as RecipeMap = RecipeMap.getByName("sifter");
global solidifier        as RecipeMap = RecipeMap.getByName("fluid_solidifier");
global tower             as RecipeMap = RecipeMap.getByName("distillation_tower");
global unpackager        as RecipeMap = RecipeMap.getByName("unpacker");
global wiremill          as RecipeMap = RecipeMap.getByName("wiremill");



// Tools
<ore:gtceWrenches>.addItems([
	<gregtech:meta_tool:8>.withEmptyTag(), 
	<gregtech:meta_tool:28>.withEmptyTag(), 
	<gregtech:meta_tool:29>.withEmptyTag(), 
	<gregtech:meta_tool:30>.withEmptyTag()]);

<ore:gtceScrewdrivers>.addItems([
	<gregtech:meta_tool:11>.withEmptyTag(), 
	<gregtech:meta_tool:31>.withEmptyTag()]);

<ore:gtceHardHammers>.addItems([
	<gregtech:meta_tool:6>.withEmptyTag()]);

<ore:gtceSaws>.addItems([
	<gregtech:meta_tool:5>.withEmptyTag(),
	<gregtech:meta_tool:25>.withEmptyTag(), 
	<gregtech:meta_tool:26>.withEmptyTag(), 
	<gregtech:meta_tool:27>.withEmptyTag(),
	<gregtech:meta_tool:32>.withEmptyTag()]);

<ore:gtceFiles>.addItems([
	<gregtech:meta_tool:9>.withEmptyTag()]);

<ore:gtceWireCutters>.addItems([
	<gregtech:meta_tool:13>.withEmptyTag()]);