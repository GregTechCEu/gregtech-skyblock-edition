#priority 0

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.gtadditions.recipe.Utils;
import mods.tconstruct.Alloy;

static redWire as IIngredient = <projectred-transmission:wire:0>;
static paper as IIngredient = <minecraft:paper>;
static enderEye as IIngredient = <minecraft:ender_eye>;

static shapedRecipes as IIngredient[][][][IItemStack] = {
    <thermaldynamics:duct_16:0> * 6: [ //Fluiduct clear
		[
			[<ore:stickCopper>, <ore:blockGlass>, <ore:stickCopper>],
			[<ore:stickCopper>, <ore:blockGlass>, <ore:stickCopper>],
			[<ore:stickCopper>, <ore:blockGlass>, <ore:stickCopper>],
		]
	],
	<thermaldynamics:duct_16:1> * 6: [ //Fluiduct opaque
		[
			[<ore:stickCopper>, <ore:plateLead>, <ore:stickCopper>],
			[<ore:stickCopper>, <ore:plateLead>, <ore:stickCopper>],
			[<ore:stickCopper>, <ore:plateLead>, <ore:stickCopper>],
		]
	],
	<thermaldynamics:duct_16:2> * 6: [ // hardened Fluiduct clear
		[
			[<ore:stickInvar>, <ore:blockGlassHardened>, <ore:stickInvar>],
			[<ore:stickInvar>, <ore:blockGlassHardened>, <ore:stickInvar>],
			[<ore:stickInvar>, <ore:blockGlassHardened>, <ore:stickInvar>],
		]
	],
	<thermaldynamics:duct_16:3> * 6: [ // hardened Fluiduct opaque
		[
			[<ore:stickInvar>, <ore:plateLead>, <ore:stickInvar>],
			[<ore:stickInvar>, <ore:plateLead>, <ore:stickInvar>],
			[<ore:stickInvar>, <ore:plateLead>, <ore:stickInvar>],
		]
	],
	<thermaldynamics:duct_32:0> * 6: [ //Itemduct clear
		[
			[<ore:stickTin>, <ore:blockGlassHardened>, <ore:stickTin>],
			[<ore:stickTin>, <ore:blockGlassHardened>, <ore:stickTin>],
			[<ore:stickTin>, <ore:blockGlassHardened>, <ore:stickTin>],
		]
	],
	<thermaldynamics:duct_32:1> * 6: [ //Itemduct opaque
		[
			[<ore:stickTin>, <ore:plateLead>, <ore:stickTin>],
			[<ore:stickTin>, <ore:plateLead>, <ore:stickTin>],
			[<ore:stickTin>, <ore:plateLead>, <ore:stickTin>],
		]
	],
	<thermaldynamics:duct_0:6> * 6 : [ //Redstone Energy Fluxduct empty
		[
			[<ore:stickElectrum>, <ore:blockGlassHardened>, <ore:stickElectrum>],
			[<ore:stickElectrum>, <ore:blockGlassHardened>, <ore:stickElectrum>],
			[<ore:stickElectrum>, <ore:blockGlassHardened>, <ore:stickElectrum>],
		]
	],
	<thermaldynamics:servo:0> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwIron>, redWire, <ore:screwIron>],
			[<ore:plateIron>, <ore:blockGlass>, <ore:plateIron>]
		]
	],
	<thermaldynamics:servo:1> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwTinAlloy>, redWire, <ore:screwTinAlloy>],
			[<ore:plateInvar>, <ore:blockGlass>, <ore:plateInvar>]
		]
	],
	<thermaldynamics:servo:2> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwSteel>, redWire, <ore:screwSteel>],
			[<ore:plateElectrum>, <ore:blockGlass>, <ore:plateElectrum>]
		]
	],
	<thermaldynamics:servo:3> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwStainlessSteel>, redWire, <ore:screwStainlessSteel>],
			[<ore:plateSignalum>, <ore:blockGlass>, <ore:plateSignalum>]
		]
	],
	<thermaldynamics:servo:4> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwTitanium>, redWire, <ore:screwTitanium>],
			[<ore:plateEnderium>, <ore:blockGlass>, <ore:plateEnderium>]
		]
	],
	<thermaldynamics:filter:0> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwIron>, paper, <ore:screwIron>],
			[<ore:plateIron>, <ore:blockGlass>, <ore:plateIron>]
		]
	],
	<thermaldynamics:filter:1> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwTinAlloy>, paper, <ore:screwTinAlloy>],
			[<ore:plateInvar>, <ore:blockGlass>, <ore:plateInvar>]
		]
	],
	<thermaldynamics:filter:2> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwSteel>, paper, <ore:screwSteel>],
			[<ore:plateElectrum>, <ore:blockGlass>, <ore:plateElectrum>]
		]
	],
	<thermaldynamics:filter:3> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwStainlessSteel>, paper, <ore:screwStainlessSteel>],
			[<ore:plateSignalum>, <ore:blockGlass>, <ore:plateSignalum>]
		]
	],
	<thermaldynamics:filter:4> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwTitanium>, paper, <ore:screwTitanium>],
			[<ore:plateEnderium>, <ore:blockGlass>, <ore:plateEnderium>]
		]
	],
	<thermaldynamics:retriever:0> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwIron>, enderEye, <ore:screwIron>],
			[<ore:plateIron>, <ore:blockGlass>, <ore:plateIron>]
		]
	],
	<thermaldynamics:retriever:1> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwTinAlloy>, enderEye, <ore:screwTinAlloy>],
			[<ore:plateInvar>, <ore:blockGlass>, <ore:plateInvar>]
		]
	],
	<thermaldynamics:retriever:2> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwSteel>, enderEye, <ore:screwSteel>],
			[<ore:plateElectrum>, <ore:blockGlass>, <ore:plateElectrum>]
		]
	],
	<thermaldynamics:retriever:3> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwStainlessSteel>, enderEye, <ore:screwStainlessSteel>],
			[<ore:plateSignalum>, <ore:blockGlass>, <ore:plateSignalum>]
		]
	],
	<thermaldynamics:retriever:4> : [
		[
			[null, gt.screwDriver, null],
			[<ore:screwTitanium>, enderEye, <ore:screwTitanium>],
			[<ore:plateEnderium>, <ore:blockGlass>, <ore:plateEnderium>]
		]
	]
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<thermaldynamics:duct_16:0> * 2: [
		[<thermaldynamics:duct_16:1>, <thermaldynamics:duct_16:1>, <ore:blockGlass>]
	],
	<thermaldynamics:duct_16:1> * 2: [
		[<thermaldynamics:duct_16:0>, <thermaldynamics:duct_16:0>, <ore:plateLead>]
	],
	<thermaldynamics:duct_16:2> * 2: [
		[<thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>, <ore:blockGlassHardened>]
	],
	<thermaldynamics:duct_16:3> * 2: [
		[<thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <ore:plateLead>]
	],
	<thermaldynamics:duct_32:0> * 2: [
		[<thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:1>, <ore:blockGlassHardened>]
	],
	<thermaldynamics:duct_32:1> * 2: [
		[<thermaldynamics:duct_32:0>, <thermaldynamics:duct_32:0>, <ore:plateLead>]
	],
	<thermaldynamics:duct_32:2> * 2: [
		[<thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:3>, <ore:blockGlassHardened>]
	],
	<thermaldynamics:duct_32:3> * 2: [
		[<thermaldynamics:duct_32:2>, <thermaldynamics:duct_32:2>, <ore:plateLead>]
	],
	<thermaldynamics:duct_32:4> * 2: [
		[<thermaldynamics:duct_32:5>, <thermaldynamics:duct_32:5>, <ore:blockGlassHardened>]
	],
	<thermaldynamics:duct_32:5> * 2: [
		[<thermaldynamics:duct_32:4>, <thermaldynamics:duct_32:4>, <ore:plateLead>]
	],
	<thermaldynamics:duct_32:6> * 2: [
		[<thermaldynamics:duct_32:7>, <thermaldynamics:duct_32:7>, <ore:blockGlassHardened>]
	],
	<thermaldynamics:duct_32:7> * 2: [
		[<thermaldynamics:duct_32:6>, <thermaldynamics:duct_32:6>, <ore:plateLead>]
	],
	<thermaldynamics:duct_16:4> * 2: [
		[<thermaldynamics:duct_16:5>, <thermaldynamics:duct_16:5>, <ore:blockGlassHardened>]
	],
	<thermaldynamics:duct_16:5> * 2: [
		[<thermaldynamics:duct_16:4>, <thermaldynamics:duct_16:4>, <ore:plateLead>]
	],
	<thermaldynamics:duct_16:6> * 2: [
		[<thermaldynamics:duct_16:7>, <thermaldynamics:duct_16:7>, <ore:blockGlassHardened>]
	],
	<thermaldynamics:duct_16:7> * 2: [
		[<thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:6>, <ore:plateLead>]
	]
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<thermaldynamics:duct_64:0>,
	<thermaldynamics:duct_64:2>,
	<ore:dustLumium>.firstItem,
	<ore:dustSignalum>.firstItem,
	<thermaldynamics:duct_16:0>,
	<thermaldynamics:duct_16:1>,
	<thermaldynamics:duct_16:2>,
	<thermaldynamics:duct_16:3>,
	<thermaldynamics:duct_16:4>,
	<thermaldynamics:duct_16:5>,
	<thermaldynamics:duct_16:6>,
	<thermaldynamics:duct_16:7>,
	<thermaldynamics:duct_32:0>,
	<thermaldynamics:duct_32:1>,
	<thermaldynamics:duct_32:2>,
	<thermaldynamics:duct_32:3>,
	<thermaldynamics:duct_32:4>,
	<thermaldynamics:duct_32:5>,
	<thermaldynamics:duct_32:6>,
	<thermaldynamics:duct_32:7>,
	<thermaldynamics:duct_0:0>,
	<thermaldynamics:duct_0:1>,
	<thermaldynamics:duct_0:2>,
	<thermaldynamics:duct_0:3>,
	<thermaldynamics:duct_0:4>,
	<thermaldynamics:duct_0:5>,
	<thermaldynamics:duct_0:6>,
	<thermaldynamics:duct_0:9>,
	<thermaldynamics:servo:0>,
	<thermaldynamics:servo:1>,
	<thermaldynamics:servo:2>,
	<thermaldynamics:servo:3>,
	<thermaldynamics:servo:4>,
	<thermaldynamics:filter:0>,
	<thermaldynamics:filter:1>,
	<thermaldynamics:filter:2>,
	<thermaldynamics:filter:3>,
	<thermaldynamics:filter:4>,
	<thermaldynamics:retriever:0>,
	<thermaldynamics:retriever:1>,
	<thermaldynamics:retriever:2>,
	<thermaldynamics:retriever:3>,
	<thermaldynamics:retriever:4>,
        <thermalfoundation:material:1025>,
        <thermalfoundation:material:1024>,
        <thermalfoundation:material:1026>,
        <thermalfoundation:material:1027>
];

static removeFurnace as IIngredient[] = [
	<ore:ingotSignalum>,
	<ore:ingotLumium>,
];

function machineRecipes() {

	// Hardened Glass
	val hardenedGlasses as IIngredient[IItemStack] = {
		<thermalfoundation:glass:0> : <ore:dustCopper>,
		<thermalfoundation:glass:1> : <ore:dustTin>,
		<thermalfoundation:glass:2> : <ore:dustSilver>,
		<thermalfoundation:glass:4> : <ore:dustAluminium>,
		<thermalfoundation:glass:5> : <ore:dustNickel>,
		<thermalfoundation:glass:6> : <ore:dustPlatinum>,
		<thermalfoundation:glass:7> : <ore:dustIridium>,
		<thermalfoundation:glass_alloy:0> : <ore:dustSteel>,
		<thermalfoundation:glass_alloy:1> : <ore:dustElectrum>,
		<thermalfoundation:glass_alloy:2> : <ore:dustInvar>,
		<thermalfoundation:glass_alloy:3> : <ore:dustBronze>,
		<thermalfoundation:glass_alloy:5> : <ore:dustSignalum>,
		<thermalfoundation:glass_alloy:6> : <ore:dustLumium>,
		<thermalfoundation:glass_alloy:7> : <ore:dustEnderium>,
	};

	gt.alloy_smelter.recipeBuilder()
		.inputs([<ore:dustObsidian> * 2, <ore:blockGlass>])
		.outputs([<thermalfoundation:glass:3>])
		.EUt(120).duration(sec(12))
		.buildAndRegister();

	for glass, dust in hardenedGlasses {
		gt.alloy_smelter.recipeBuilder()
			.inputs([dust * 2, <ore:blockGlassHardened>])
			.outputs([glass])
			.EUt(120).duration(sec(12))
			.buildAndRegister();
	}

	// Siganlum
	gt.large_mixer.recipeBuilder()
        .inputs([<ore:dustCopper> * 3, <ore:dustSilver>])
		.fluidInputs([<liquid:redstone> * 1000])
        .outputs([<ore:dustSignalum>.firstItem * 4])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.mixer.recipeBuilder()
        .inputs([<ore:dustCopper> * 3, <ore:dustSilver>])
		.fluidInputs([<liquid:redstone> * 1000])
        .outputs([<ore:dustSignalum>.firstItem * 4])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.blast_furnace.recipeBuilder()
		.inputs([<ore:dustSignalum> * 1])
		.property("temperature", 3800)
		.outputs([<ore:ingotSignalum>.firstItem * 1])
		.duration(sec(210))
		.EUt(120)
		.buildAndRegister();

	// Lumium
	gt.large_mixer.recipeBuilder()
        .inputs([<ore:dustTin> * 3, <ore:dustSilver>])
		.fluidInputs([<liquid:glowstone> * 1000])
        .outputs([<ore:dustLumium>.firstItem * 4])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.mixer.recipeBuilder()
        .inputs([<ore:dustTin> * 3, <ore:dustSilver>])
		.fluidInputs([<liquid:glowstone> * 1000])
        .outputs([<ore:dustLumium>.firstItem * 4])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.blast_furnace.recipeBuilder()
		.inputs([<ore:dustLumium> * 1])
		.property("temperature", 3800)
		.outputs([<ore:ingotLumium>.firstItem * 1])
		.duration(sec(210))
		.EUt(120)
		.buildAndRegister();

	//Element dust
	Utils.removeRecipeByOutput(gt.large_mixer, [<gregtech:meta_item_1:2991> * 2], [], true); //Pyrotheum
	Utils.removeRecipeByOutput(gt.mixer, [<gregtech:meta_item_1:2991> * 2], [], true); //Pyrotheum
	Utils.removeRecipeByOutput(gt.large_mixer, [<gregtech:meta_item_1:2952> * 2], [], true); //Cryotheum
	Utils.removeRecipeByOutput(gt.mixer, [<gregtech:meta_item_1:2952> * 2], [], true); //Cryotheum
	gt.mixer.recipeBuilder()
        .inputs([<minecraft:blaze_powder> * 2, <ore:dustRedstone>, <ore:dustSulfur>])
        .outputs([<thermalfoundation:material:1024> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.mixer.recipeBuilder()
        .inputs([<ore:dustBlizz> * 2, <ore:dustRedstone>, <minecraft:snowball>])
        .outputs([<thermalfoundation:material:1025> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.mixer.recipeBuilder()
        .inputs([<thermalfoundation:material:2051> * 2, <ore:dustRedstone>, <ore:dustSaltpeter>])
        .outputs([<thermalfoundation:material:1026> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.mixer.recipeBuilder()
        .inputs([<thermalfoundation:material:2053> * 2, <ore:dustRedstone>, <ore:dustObsidian>])
        .outputs([<thermalfoundation:material:1027> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.mixer.recipeBuilder()
        .inputs([<minecraft:blaze_powder> * 2, <ore:dustRedstone>, <ore:dustSulfur>])
        .outputs([<thermalfoundation:material:1024> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.large_mixer.recipeBuilder()
        .inputs([<ore:dustBlizz> * 2, <ore:dustRedstone>, <minecraft:snowball>])
        .outputs([<thermalfoundation:material:1025> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.large_mixer.recipeBuilder()
        .inputs([<thermalfoundation:material:2051> * 2, <ore:dustRedstone>, <ore:dustSaltpeter>])
        .outputs([<thermalfoundation:material:1026> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();
	gt.large_mixer.recipeBuilder()
        .inputs([<thermalfoundation:material:2053> * 2, <ore:dustRedstone>, <ore:dustObsidian>])
        .outputs([<thermalfoundation:material:1027> * 2])
        .EUt(120).duration(sec(5))
		//.dupeForSmall()
        .buildAndRegister();

	// Fluid from dust
	gt.fluid_extractor.recipeBuilder()
        .inputs([<thermalfoundation:material:1026>])
        .fluidOutputs([<liquid:aerotheum> * 250])
        .EUt(2).duration(32)
        .buildAndRegister();
	gt.fluid_extractor.recipeBuilder()
        .inputs([<thermalfoundation:material:1027>])
        .fluidOutputs([<liquid:petrotheum> * 250])
        .EUt(2).duration(32)
        .buildAndRegister();

	// Viaducts
	gt.fluid_canner.recipeBuilder()
		.inputs([<thermaldynamics:duct_64:3>])
        .fluidInputs([<liquid:aerotheum> * 125])
        .outputs([<thermaldynamics:duct_64:0>])
        .EUt(48).duration(sec(5))
        .buildAndRegister();
	gt.fluid_canner.recipeBuilder()
		.inputs([<thermaldynamics:duct_64:1>])
        .fluidInputs([<liquid:ender> * 125])
        .outputs([<thermaldynamics:duct_64:2>])
        .EUt(48).duration(sec(5))
        .buildAndRegister();

	// Fluxducts
	// Lead
	gt.assembler.recipeBuilder()
        .inputs([<ore:stickLead> * 2, <ore:blockGlass>])
		.fluidInputs([<liquid:redstone> * 288])
        .outputs([<thermaldynamics:duct_0> * 2])
        .EUt(30).duration(sec(9))
        .buildAndRegister();
	//Hardened
	gt.assembler.recipeBuilder()
        .inputs([<thermaldynamics:duct_0>, <ore:stickInvar> * 2])
		.fluidInputs([<liquid:redstone> * 288])
        .outputs([<thermaldynamics:duct_0:1>])
        .EUt(120).duration(sec(9))
        .buildAndRegister();
	//Signalum
	gt.assembler.recipeBuilder()
        .inputs([<thermaldynamics:duct_0:2>, <ore:plateSignalum> * 1])
		.notConsumable(gt.getCirc(1))
		.fluidInputs([<liquid:redstone> * 288])
        .outputs([<thermaldynamics:duct_0:3>])
        .EUt(120).duration(sec(9))
        .buildAndRegister();
	//Resonant
	gt.assembler.recipeBuilder()
        .inputs([<thermaldynamics:duct_0:3>, <ore:stickEnderium> * 2])
		.notConsumable(gt.getCirc(1))
		.fluidInputs([<liquid:redstone> * 288])
        .outputs([<thermaldynamics:duct_0:4>])
        .EUt(120).duration(sec(9))
        .buildAndRegister();
	//Empty cryo
	gt.assembler.recipeBuilder()
        .inputs([<thermaldynamics:duct_0:4>, <ore:stickElectrum> * 8, <ore:blockGlassHardened> * 4])
		.fluidInputs([<liquid:redstone> * 288])
        .outputs([<thermaldynamics:duct_0:9>])
        .EUt(300).duration(sec(16))
        .buildAndRegister();
	gt.fluid_canner.recipeBuilder()
		.inputs([<thermaldynamics:duct_0:6>])
        .fluidInputs([<liquid:redstone> * 200])
        .outputs([<thermaldynamics:duct_0:2>])
        .EUt(48).duration(sec(5))
        .buildAndRegister();
	gt.fluid_canner.recipeBuilder()
		.inputs([<thermaldynamics:duct_0:9>])
        .fluidInputs([<liquid:cryotheum> * 500])
        .outputs([<thermaldynamics:duct_0:5>])
        .EUt(240).duration(sec(14))
        .buildAndRegister();

	//Fluiducts
	//Signalum Plated
	gt.assembler.recipeBuilder()
        .inputs([<thermaldynamics:duct_16:2>, <ore:stickElectrum> * 1, <ore:plateSignalum> * 1])
		.notConsumable(gt.getCirc(1))
		.fluidInputs([<liquid:redstone> * 144])
        .outputs([<thermaldynamics:duct_16:4>])
        .EUt(120).duration(sec(9))
        .buildAndRegister();
	//Super Laminar
	gt.assembler.recipeBuilder()
        .inputs([<thermaldynamics:duct_16:2>, <ore:stickBronze> * 8, <ore:blockGlassHardened> * 4])
		.fluidInputs([<liquid:glowstone> * 288])
        .outputs([<thermaldynamics:duct_16:6>])
        .EUt(300).duration(sec(16))
        .buildAndRegister();

	//Itemducts
	//Impulse
	gt.chemical_bath.recipeBuilder()
        .inputs([<thermaldynamics:duct_32:0>])
		.fluidInputs([<liquid:glowstone> * 288])
        .outputs([<thermaldynamics:duct_32:2>])
        .EUt(120).duration(sec(9))
        .buildAndRegister();
	//Signalum Plated
	gt.assembler.recipeBuilder()
        .inputs([<thermaldynamics:duct_32:0>, <ore:stickElectrum> * 1, <ore:plateSignalum> * 1])
		.notConsumable(gt.getCirc(1))
		.fluidInputs([<liquid:redstone> * 144])
        .outputs([<thermaldynamics:duct_32:4>])
        .EUt(120).duration(sec(9))
        .buildAndRegister();
	//Signalum Plated Impulse
	gt.assembler.recipeBuilder()
        .inputs([<thermaldynamics:duct_32:2>, <ore:stickElectrum> * 1, <ore:plateSignalum> * 1])
		.notConsumable(gt.getCirc(1))
		.fluidInputs([<liquid:redstone> * 144])
        .outputs([<thermaldynamics:duct_32:6>])
        .EUt(120).duration(sec(9))
        .buildAndRegister();
	//Signalum Plate
	gt.metal_bender.recipeBuilder()
        .inputs([<ore:ingotSignalum> * 1])
		.notConsumable(gt.getCirc(0))
        .outputs([<thermalfoundation:material:357> * 1])
        .EUt(24).duration(sec(2.8))
        .buildAndRegister();

	// remove alloying in smeltery
	Alloy.removeRecipe(<liquid:lumium>);
	Alloy.removeRecipe(<liquid:signalum>);
	Alloy.removeRecipe(<liquid:enderium>);
}

function init() {
	// Un-named recipes
	craft.process(shapedRecipes, false);
    craft.process(shapelessRecipes);
	craft.removeRecipes(removeRecipes, true);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}