#priority 3000

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps as GA;
import mods.gtadditions.recipe.LargeRecipeMap;

zenClass Gregtech {
	zenConstructor() {
	}

	val compressor as RecipeMap = RecipeMap.getByName("compressor");
	val extractor as RecipeMap = RecipeMap.getByName("extractor");
	val macerator as RecipeMap = RecipeMap.getByName("macerator");
	val orewasher as RecipeMap = RecipeMap.getByName("orewasher");
	val thermal_centrifuge as RecipeMap = RecipeMap.getByName("thermal_centrifuge");
	val gt_furnace as RecipeMap = RecipeMap.getByName("furnace");
	val microwave as RecipeMap = RecipeMap.getByName("microwave");
	val assembler as RecipeMap = RecipeMap.getByName("assembler");
	val forming_press as RecipeMap = RecipeMap.getByName("forming_press");
	val fluid_canner as RecipeMap = RecipeMap.getByName("fluid_canner");
	val plasma_arc_furnace as RecipeMap = RecipeMap.getByName("plasma_arc_furnace");
	val arc_furnace as RecipeMap = RecipeMap.getByName("arc_furnace");
	val sifter as RecipeMap = RecipeMap.getByName("sifter");
	val laser_engraver as RecipeMap = RecipeMap.getByName("laser_engraver");
	val mixer as RecipeMap = RecipeMap.getByName("mixer");
	val autoclave as RecipeMap = RecipeMap.getByName("autoclave");
	val electromagnetic_separator as RecipeMap = RecipeMap.getByName("electromagnetic_separator");
	val polarizer as RecipeMap = RecipeMap.getByName("polarizer");
	val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");
	val brewer as RecipeMap = RecipeMap.getByName("brewer");
	val fluid_heater as RecipeMap = RecipeMap.getByName("fluid_heater");
	val distillery as RecipeMap = RecipeMap.getByName("distillery");
	val fermenter as RecipeMap = RecipeMap.getByName("fermenter");
	val fluid_solidifier as RecipeMap = RecipeMap.getByName("fluid_solidifier");
	val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");
	val centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");
	val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
	val blast_furnace as RecipeMap = RecipeMap.getByName("blast_furnace");
	val implosion_compressor as RecipeMap = RecipeMap.getByName("implosion_compressor");
	val vacuum_freezer as RecipeMap = RecipeMap.getByName("vacuum_freezer");
	val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
	val distillation_tower as RecipeMap = RecipeMap.getByName("distillation_tower");
	val cracker as RecipeMap = RecipeMap.getByName("cracker");
	val pyro as RecipeMap = RecipeMap.getByName("pyro");
	val wiremill as RecipeMap = RecipeMap.getByName("wiremill");
	val metal_bender as RecipeMap = RecipeMap.getByName("metal_bender");
	val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
	val canner as RecipeMap = RecipeMap.getByName("canner");
	val lathe as RecipeMap = RecipeMap.getByName("lathe");
	val cutting_saw as RecipeMap = RecipeMap.getByName("cutting_saw");
	val extruder as RecipeMap = RecipeMap.getByName("extruder");
	val forge_hammer as RecipeMap = RecipeMap.getByName("forge_hammer");
	val packer as RecipeMap = RecipeMap.getByName("packer");
	val unpacker as RecipeMap = RecipeMap.getByName("unpacker");

	//Gregicality
	val cluster_mill as RecipeMap = GA.CLUSTER_MILL_RECIPES;
	val assembly_line as RecipeMap = GA.ASSEMBLY_LINE_RECIPES;
	val mass_fab as RecipeMap = GA.MASS_FAB_RECIPES;
	val replicator as RecipeMap = GA.REPLICATOR_RECIPES;
	val cracker_unit as RecipeMap = GA.CRACKER_UNIT_RECIPES;
	val circuit_assembler as RecipeMap = GA.CIRCUIT_ASSEMBLER_RECIPES;
	val electric_sieve as RecipeMap = GA.SIEVE_RECIPES;
	val attractor as RecipeMap = GA.ATTRACTOR_RECIPES;
	val chemical_dehydrator as RecipeMap = GA.CHEMICAL_DEHYDRATOR_RECIPES;
	val chemical_plant as RecipeMap = GA.CHEMICAL_PLANT_RECIPES;
	val blast_alloy as RecipeMap = GA.BLAST_ALLOY_RECIPES;
	val simple_ore_washer as RecipeMap = GA.SIMPLE_ORE_WASHER_RECIPES;
	val nuclear_reactor as RecipeMap = GA.NUCLEAR_REACTOR_RECIPES;
	val nuclear_breeder as RecipeMap = GA.NUCLEAR_BREEDER_RECIPES;
	val decay_chamber as RecipeMap = GA.DECAY_CHAMBERS_RECIPES;
	//val bio_reactor as RecipeMap = GA.BIO_REACTOR_RECIPES;
	//val qubit_generator as RecipeMap = GA.SIMPLE_QUBIT_GENERATOR;
	//val stellar_forge as RecipeMap = GA.STELLAR_FORGE_RECIPES;
	//val plasma_condenser as RecipeMap = GA.PLASMA_CONDENSER_RECIPES;
	//val gas_centrifuge as RecipeMap = GA.GAS_CENTRIFUGE_RECIPES;
	//val adv_fusion as RecipeMap = GA.ADV_FUSION_RECIPES;

	// Large
	val large_chemical_reactor as RecipeMap = GA.LARGE_CHEMICAL_RECIPES;
	val large_mixer as RecipeMap = GA.LARGE_MIXER_RECIPES;
	val large_centrifuge as RecipeMap = GA.LARGE_CENTRIFUGE_RECIPES;
	//val large_engraver as RecipeMap = GA.LARGE_ENGRAVER_RECIPES;

	val diesel_generator as RecipeMap = RecipeMap.getByName("diesel_generator");
	val gas_turbine as RecipeMap = RecipeMap.getByName("gas_turbine");
	val steam_turbine as RecipeMap = RecipeMap.getByName("steam_turbine");
	val plasma_generator as RecipeMap = RecipeMap.getByName("plasma_generator");

	val rocket_fuel as RecipeMap = RecipeMap.getByName("rocket_fuel");
	val naquadah_reactor as RecipeMap = RecipeMap.getByName("naquadah_reactor");

	val screwDriver as IIngredient = <ore:gregScrewDrivers>;
	val wrench as IIngredient = <ore:gregWrenches>;
	val saw as IIngredient = <ore:gregSaws>;
	val hammer as IIngredient = <ore:gregHardHammers>;
	val mortar as IIngredient = <ore:gregMortars>;
	val file as IIngredient = <ore:gregFiles>;
	val cutter as IIngredient = <ore:gregWireCutters>;
	val benCyl as IItemStack = <gtadditions:ga_meta_tool:1>;
	val benCylLrg as IItemStack = <gtadditions:ga_meta_tool:0>;

	val mats as string[string] = {
		Aluminium : "MV",
		Americium : "LuV",
		Antimony : "LV",
		Barium : "MV",
		Beryllium : "LV",
		Bismuth : "LV",
		Cadmium : "LV",
		Caesium : "MV",
		Calcium : "LV",
		//Carbon : "",
		Cerium : "MV",
		Chrome : "MV",
		Cobalt : "LV",
		Copper : "Bronze",
		Europium : "LuV",
		Gallium : "MV",
		Gold : "LV",
		//Indium : "",
		Iridium : "EV",
		Iron : "Bronze",
		Lanthanum : "EV",
		Lead : "LV",
		Lithium : "MV",
		Lutetium : "EV",
		Manganese : "LV",
		Molybdenum : "LV",
		Neodymium : "LV",
		Darmstadtium : "UV",
		Nickel : "Bronze",
		Niobium : "HV",
		Osmium : "HV",
		Palladium : "EV",
		Platinum : "LV",
		Plutonium : "HV",//,244
		Plutonium241 : "HV",
		Potassium : "LV",
		Silicon : "LV",
		Silver : "LV",
		Sodium : "LV",
		Tantalum : "LV",
		Thorium : "LV",
		Tin : "Bronze",
		Titanium : "HV",
		Tungsten : "EV",
		Uranium : "LV",//,238
		Uranium235 : "HV",
		Vanadium : "HV",
		Yttrium : "HV",
		Zinc : "Bronze",
		Almandine : "LV",
		AnnealedCopper : "MV",
		BatteryAlloy : "LV",
		BlueTopaz : "LV",
		Brass : "Bronze",
		Bronze : "Bronze",
		Cupronickel : "LV",
		Diamond : "LV",
		Electrum : "Steel",
		Emerald : "LV",
		GreenSapphire : "LV",
		Rutile : "LV",
		Invar : "Steel",
		Kanthal : "HV",
		Lazurite : "Steel",
		Magnalium : "LV",
		Nichrome : "HV",
		NiobiumTitanium : "EV",
		Ruby : "LV",
		Sapphire : "LV",
		Sodalite : "Steel",
		SolderingAlloy : "LV",
		StainlessSteel : "HV",
		Steel : "Steel",
		Tanzanite : "LV",
		TinAlloy : "Steel",
		Topaz : "LV",
		Ultimet : "EV",
		VanadiumGallium : "EV",
		WroughtIron : "Steel",
		YttriumBarium : "EV",
		NetherQuartz : "LV",
		CertusQuartz : "LV",
		Graphite : "LV",
		Graphene : "HV",
		Jasper : "LV",
		Osmiridium : "EV",
		Olivine : "LV",
		Opal : "LV",
		Amethyst : "LV",
		Redstone : "Bronze",
		Lapis : "Steel",
		Enderpearl : "LV",
		EnderEye : "EV",
		SterlingSilver : "MV",
		RoseGold : "MV",
		BlackBronze : "HV",
		BismuthBronze : "MV",
		BlackSteel : "HV",
		RedSteel : "HV",
		BlueSteel : "HV",
		TungstenSteel : "EV",
		RedAlloy : "Bronze",
		CobaltBrass : "Steel",
		GarnetRed : "LV",
		GarnetYellow : "LV",
		Vinteum : "LV",
		IronMagnetic : "LV",
		SteelMagnetic : "LV",
		NeodymiumMagnetic : "LV",
		TungstenCarbide : "EV",
		VanadiumSteel : "HV",
		Hssg : "LuV",
		Hsse : "LuV",
		Hsss : "LuV",
		Naquadah : "LuV",
		NaquadahAlloy : "ZPM",
		NaquadahEnriched : "ZPM",
		Naquadria : "UV",
		Tritanium : "LuV",
		Duranium : "LuV",
		Stone : "NULL",
		Glowstone : "LV",
		NetherStar : "IV",
		SiliconeRubber : "MV",
		GalliumArsenide : "MV",
		Polyphenylene : "HV",
		IndiumGalliumPhosphide : "LuV",
		NickelZincFerrite : "MV",
		Draconium : "ZPM",
		PlutoniumRadioactive : "EV",
		UraniumRadioactive : "EV",
		Mendelevium : "EV",
		Fermium : "EV",
		Einsteinium : "EV",
		Californium : "EV",
		Berkelium : "EV",
		Curium : "EV",
		Neptunium : "EV",
		Protactinium : "EV",
		Polybenzimidazole : "IV",
		RhodiumPlatedPalladium : "MV",
		Rhodium : "MV",
		Ruthenium : "MV",
		Zirconium : "MV",
		ZirconiumCarbide : "MV",
		IncoloyMa : "EV",
		HgAlloy : "LuV",
		BabbittAlloy : "EV",
		NitinolA : "HV",
		Enderium : "LuV",
		ZpmSuperconductorBase : "ZPM",
		LuvSuperconductorBase : "LuV",
		EvSuperconductorBase : "EV",
		IvSuperconductorBase : "IV",
		HvSuperconductorBase : "HV",
		MvSuperconductorBase : "MV",
		Talonite : "HV",
		Stellite : "HV",
		Tumbaga : "MV",
		HastelloyN : "EV",
		Staballoy : "MV",
		Potin : "MV",
		MaragingSteelA : "EV",
		InconelA : "EV",
		Grisium : "EV",
		EglinSteel : "HV",
		Neutronium : "ZPM",
		Modularium : "LV",

		//Custom materials
		DarkSteel : "HV",
		ElectricalSteel : "HV",
		RocketSteel1 : "HV",
		RocketSteel2 : "IV",
		RocketSteel3 : "ZPM",

		//Disabled as there is no way to obtain these
		/*
		DamascusSteel : "Disabled",
		Dysprosium : "Disabled",
		Erbium : "Disabled",
		Gadolinium : "Disabled",
		Holmium : "Disabled",
		NiobiumNitride : "Disabled",
		PigIron : "Disabled",
		Praseodymium : "Disabled",
		Promethium : "Disabled",
		Rubidium : "Disabled",
		Samarium : "Disabled",
		Scandium : "Disabled",
		Strontium : "Disabled",
		Tellurium : "Disabled",
		Terbium : "Disabled",
		Thulium : "Disabled",
		Ytterbium : "Disabled",
		*/
	};

	function isGem(material as string) as bool {
		if(oreDict has "gem" + material & !oreDict.get("gem" + material).empty) {
			return true;
		}
		return false;
	}

	function getCirc(config as int) as IItemStack {
		return <metaitem:circuit.integrated>.withTag({Configuration: config});
	}

	function getCirc(tier as string) as IIngredient {
		if(tier.toLowerCase == "lv") {
			return <ore:circuitBasic>;
		}
		if(tier.toLowerCase == "mv") {
			return <ore:circuitGood>;
		}
		if(tier.toLowerCase == "hv") {
			return <ore:circuitAdvanced>;
		}
		if(tier.toLowerCase == "ev") {
			return <ore:circuitExtreme>;
		}
		if(tier.toLowerCase == "iv") {
			return <ore:circuitElite>;
		}
		if(tier.toLowerCase == "luv") {
			return <ore:circuitMaster>;
		}
		if(tier.toLowerCase == "zpm") {
			return <ore:circuitUltimate>;
		}
		if(tier.toLowerCase == "uv") {
			return <ore:circuitSuperconductor>;
		}
		if(tier.toLowerCase == "max") {
			return <ore:circuitInfinite>;
		}
		return <ore:circuitPrimitive>;
	}
}