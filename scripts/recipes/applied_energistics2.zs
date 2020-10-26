//
// Applied Energistics 2
//

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gtadditions.recipe.LargeRecipeMap;
import mods.gtadditions.recipe.LargeRecipeBuilder;
import mods.threng.Aggregator;

static quartzGlass as IIngredient = <appliedenergistics2:quartz_glass>; 
static matPlate as IIngredient = <ore:plateSkyrium>;
static matIngot as IIngredient = <ore:ingotSkyrium>;
static processor  as IIngredient[] = [<appliedenergistics2:material:23>, <appliedenergistics2:material:22>, <appliedenergistics2:material:24>];
static apMatPlate as IIngredient = <ore:plateDenseHssg>;

static removeRecipes as IIngredient[] = [
    <appliedenergistics2:energy_acceptor>,
    <appliedenergistics2:controller>,
    <appliedenergistics2:drive>,
    <appliedenergistics2:quartz_glass>,
    <appliedenergistics2:material:43>,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:molecular_assembler>,
    <appliedenergistics2:interface>,
    <appliedenergistics2:fluid_interface>,
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:charger>,
    <appliedenergistics2:quartz_growth_accelerator>,
    <appliedenergistics2:fluix_block>,
    <packagedauto:packager>,
    <packagedauto:encoder>,
    <packagedauto:unpackager>,
    <packagedauto:packager_extension>,
    <packagedauto:me_package_component>,
    <packagedauto:package_component>,
    <appliedenergistics2:part:16>,
    <appliedenergistics2:material:35>,
    <appliedenergistics2:material:36>,
    <appliedenergistics2:material:37>,
    <appliedenergistics2:material:38>,
    <extracells:storage.component:0>,
    <extracells:storage.component:1>,
    <extracells:storage.component:2>,
    <extracells:storage.component:3>,
    <appliedenergistics2:condenser>,
    <ae2fc:fluid_discretizer>,
    <ae2fc:fluid_pattern_encoder>,
    <ae2fc:fluid_packet_decoder>,
    <ae2fc:ingredient_buffer>,
    <ae2fc:burette>,
    <threng:material:1>,
    <appliedenergistics2:part:140>
];

static addShaped as IIngredient[][][][IItemStack] = {
    <appliedenergistics2:energy_acceptor> : [
        [
            [matIngot, quartzGlass, matIngot],
            [quartzGlass, <appliedenergistics2:fluix_block>, quartzGlass],
            [matIngot, quartzGlass, matIngot]
        ]
    ],
    <appliedenergistics2:controller> : [
        [
            [<appliedenergistics2:smooth_sky_stone_block>, <ore:crystalPureFluix>, <appliedenergistics2:smooth_sky_stone_block>],
            [<ore:crystalPureFluix>, <appliedenergistics2:energy_acceptor>, <ore:crystalPureFluix>],
            [<appliedenergistics2:smooth_sky_stone_block>, processor[2], <appliedenergistics2:smooth_sky_stone_block>]
        ]
    ],
    <appliedenergistics2:drive> : [
        [
            [matPlate, <meta_tile_entity:gregtech:stainless_steel_chest>, matPlate],
            [processor[2], <gregtech:machine_casing:3>, processor[2]],
            [matPlate, <ore:cableFluix>, matPlate]
        ]
    ],
    <appliedenergistics2:charger> : [
        [
            [<ore:plateBlackSteel>, <ore:crystalFluix>, <ore:plateBlackSteel>],
            [<ore:plateBlackSteel>, gt.getCirc("HV"), null],
            [<ore:plateBlackSteel>, <ore:crystalFluix>, <ore:plateBlackSteel>]
        ]
    ],
    <appliedenergistics2:molecular_assembler> : [
        [
            [matPlate, quartzGlass, matPlate],
            [<appliedenergistics2:material:44>, <gregtech:machine_casing:3>, <appliedenergistics2:material:43>],
            [matPlate, <ore:workbench>, matPlate]
        ]
    ],
    <appliedenergistics2:interface> : [
        [
            [matPlate, quartzGlass, matPlate],
            [<appliedenergistics2:material:44>, <gregtech:machine_casing:3>, <appliedenergistics2:material:43>],
            [matPlate, <metaitem:conveyor.module.hv>, matPlate]
        ]
    ],
    <appliedenergistics2:fluid_interface> : [
        [
            [matPlate, quartzGlass, matPlate],
            [<appliedenergistics2:material:44>, <gregtech:machine_casing:3>, <appliedenergistics2:material:43>],
            [matPlate, <metaitem:electric.pump.hv>, matPlate]
        ]
    ],
    <appliedenergistics2:crafting_unit> : [
        [
            [matPlate, processor[0], matPlate],
            [<ore:cableFluix>, processor[1], <ore:cableFluix>],
            [matPlate, processor[0], matPlate]
        ]
    ],
    <appliedenergistics2:quartz_growth_accelerator> : [
        [
            [matIngot, <ore:cableFluix>, matIngot],
            [quartzGlass, <appliedenergistics2:fluix_block>, quartzGlass],
            [matIngot, <ore:cableFluix>, matIngot]
        ]
    ],
    <appliedenergistics2:fluix_block> : [
        [
            [<appliedenergistics2:material:12>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>],
            [<appliedenergistics2:material:12>, null, <appliedenergistics2:material:12>],
            [<appliedenergistics2:material:12>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>]
        ],
        [
            [<appliedenergistics2:material:7>, <appliedenergistics2:material:7>],
            [<appliedenergistics2:material:7>, <appliedenergistics2:material:7>]
        ]
    ],
    <packagedauto:packager> : [
        [
            [apMatPlate, <packagedauto:me_package_component>, apMatPlate],
            [<ore:cableSmart>, <meta_tile_entity:gtadditions:packer.ev>, <ore:cableSmart>],
            [apMatPlate, <metaitem:electric.piston.iv>, apMatPlate]
        ]
    ],
    <packagedauto:unpackager> : [
        [
            [apMatPlate, <packagedauto:me_package_component>, apMatPlate],
            [<ore:cableSmart>, <meta_tile_entity:gtadditions:unpacker.ev>, <ore:cableSmart>],
            [apMatPlate, <metaitem:conveyor.module.iv>, apMatPlate]
        ]
    ],
    <packagedauto:encoder> : [
        [
            [apMatPlate, <packagedauto:package_component>, apMatPlate],
            [<threng:big_assembler:3>, <gregtech:machine_casing:5>, <threng:big_assembler:3>],
            [apMatPlate, <projectred-integration:gate:26>, apMatPlate],
        ]
    ],
    <packagedauto:packager_extension> : [
        [
            [apMatPlate, <packagedauto:me_package_component>, apMatPlate],
            [<xnet:connector>, <gregtech:machine_casing:5>, <xnet:connector>],
            [apMatPlate, <metaitem:electric.piston.iv>, apMatPlate],
        ]
    ],
    <ae2fc:fluid_discretizer> : [
        [
            [matPlate, processor[2], matPlate],
            [<appliedenergistics2:part:221>, <appliedenergistics2:condenser>, <appliedenergistics2:part:220>],
            [matPlate, processor[2], matPlate]
        ]
    ],
    <ae2fc:fluid_pattern_encoder> : [
        [
            [<ore:blockLapis>, processor[2], <ore:blockLapis>],
            [matPlate, <ore:workbench>, matPlate],
            [matPlate, matPlate, matPlate]
        ]
    ],
    <ae2fc:fluid_packet_decoder> : [
        [
            [matPlate, <minecraft:hopper>, matPlate],
            [<ore:cableFluix>, <appliedenergistics2:fluid_interface>, <ore:cableFluix>],
            [matPlate, processor[0], matPlate]
        ]
    ],
    <ae2fc:ingredient_buffer> : [
        [
            [matPlate, <appliedenergistics2:material:35>, matPlate],
            [<appliedenergistics2:material:44>, quartzGlass, <appliedenergistics2:material:43>],
            [matPlate, <appliedenergistics2:material:54>, matPlate]
        ]
    ],
    <ae2fc:burette> : [
        [
            [matPlate, <minecraft:hopper>, matPlate],
            [quartzGlass, <minecraft:bucket>, quartzGlass],
            [matPlate, processor[0], matPlate]
        ]
    ]
};

static addShapeless as IIngredient[][][IItemStack] = {
    <appliedenergistics2:part:16> : [
        [<ore:cableFluix>, <minecraft:water_bucket>]
    ]
};

static removeFurnace as IIngredient[] = [
    <appliedenergistics2:smooth_sky_stone_block>
];

function machineRecipes() {
    // Skyrium
    gt.mixer.recipeBuilder()
        .inputs([<appliedenergistics2:material:45> * 2, <ore:dustCobalt>, <ore:dustSmallBlueSteel> * 4, <ore:dustTinyCertusQuartz> * 3])
        .outputs([<ore:dustSkyrium>.firstItem])
        .EUt(32).duration(sec(6))
        .buildAndRegister();
    gt.blast_furnace.recipeBuilder()
		.inputs([<ore:dustSkyrium>])
		.property("temperature", 3400)
		.outputs([<ore:ingotSkyrium>.firstItem * 1])
		.duration(sec(20))
		.EUt(120)
		.buildAndRegister();

    gt.compressor.recipeBuilder()
        .inputs([<appliedenergistics2:material:45> * 4])
        .outputs([<appliedenergistics2:sky_stone_block>])
        .EUt(512).duration(sec(30))
        .buildAndRegister();
    gt.blast_furnace.recipeBuilder()
		.inputs([<appliedenergistics2:sky_stone_block>])
		.property("temperature", 3600)
		.outputs([<appliedenergistics2:smooth_sky_stone_block> * 1])
		.duration(sec(60))
		.EUt(120)
		.buildAndRegister();


    // Add charged Certus to pure certus centrifuge
    gt.large_centrifuge.findRecipe(5, [<ore:dustPureCertusQuartz>.firstItem], null).remove();
    gt.centrifuge.findRecipe(5, [<ore:dustPureCertusQuartz>.firstItem], null).remove();
    gt.large_centrifuge.recipeBuilder()
        .inputs([<ore:dustPureCertusQuartz>])
        .outputs([<ore:dustCertusQuartz>.firstItem, <ore:dustTinyBarite>.firstItem * 3])
        .chancedOutput(<appliedenergistics2:material:1>, 300, 200)
        .EUt(5).duration(392)
        //.dupeForSmall()
        .buildAndRegister();
    gt.centrifuge.recipeBuilder()
        .inputs([<ore:dustPureCertusQuartz>])
        .outputs([<ore:dustCertusQuartz>.firstItem, <ore:dustTinyBarite>.firstItem * 3])
        .chancedOutput(<appliedenergistics2:material:1>, 300, 200)
        .EUt(5).duration(392)
        .buildAndRegister();

    // Fluix Dust
    gt.macerator.recipeBuilder()
        .inputs([<appliedenergistics2:material:7>])
        .outputs([<appliedenergistics2:material:8>])
        .EUt(16).duration(sec(4))
        .buildAndRegister();

    // Quartz Glass
    gt.alloy_smelter.recipeBuilder()
        .inputs([<ore:blockGlass>, <ore:dustQuartz> * 2])
        .outputs([<appliedenergistics2:quartz_glass>])
        .EUt(120).duration(sec(10))
        .buildAndRegister();

    // Processors
    gt.forming_press.recipeBuilder()
        .notConsumable(<appliedenergistics2:material:19>)
        .inputs([<ore:silicon>])
        .outputs([<appliedenergistics2:material:20>])
        .EUt(120).duration(sec(6))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .notConsumable(<appliedenergistics2:material:13>)
        .inputs([<ore:crystalPureCertusQuartz>])
        .outputs([<appliedenergistics2:material:16>])
        .EUt(120).duration(sec(6))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .notConsumable(<appliedenergistics2:material:14>)
        .inputs([<ore:plateDiamond>])
        .outputs([<appliedenergistics2:material:17>])
        .EUt(120).duration(sec(6))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .notConsumable(<appliedenergistics2:material:15>)
        .inputs([<ore:plateGold>])
        .outputs([<appliedenergistics2:material:18>])
        .EUt(120).duration(sec(6))
        .buildAndRegister();

    gt.forming_press.recipeBuilder()
        .inputs([<appliedenergistics2:material:16>, gt.getCirc("LV"), <appliedenergistics2:material:20>])
        .outputs([<appliedenergistics2:material:23>])
        .EUt(196).duration(sec(9))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .inputs([<appliedenergistics2:material:17>, gt.getCirc("LV"), <appliedenergistics2:material:20>])
        .outputs([<appliedenergistics2:material:24>])
        .EUt(196).duration(sec(9))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .inputs([<appliedenergistics2:material:18>, gt.getCirc("LV"), <appliedenergistics2:material:20>])
        .outputs([<appliedenergistics2:material:22>])
        .EUt(196).duration(sec(9))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .inputs([<threng:material:5>, gt.getCirc("MV"), <appliedenergistics2:material:20>])
        .outputs([<threng:material:6>])
        .EUt(196).duration(sec(16))
        .buildAndRegister();
    gt.forming_press.recipeBuilder()
        .inputs([<threng:material:13>, gt.getCirc("MV"), <appliedenergistics2:material:20>])
        .outputs([<threng:material:14>])
        .EUt(196).duration(sec(16))
        .buildAndRegister();

    //Cores
    gt.assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:22>, <ore:dustFluix> * 2, <minecraft:quartz> * 2])
        .outputs([<appliedenergistics2:material:43>])
        .EUt(410).duration(sec(13))
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:22>, <ore:dustFluix> * 2, <ore:crystalFluix> * 2])
        .outputs([<appliedenergistics2:material:44>])
        .EUt(410).duration(sec(13))
        .buildAndRegister();

    // Press recipes
    gt.laser_engraver.recipeBuilder()
        .inputs([<metaitem:shape.empty>])
        .notConsumable(<ore:craftingLensWhite>)
        .outputs([<appliedenergistics2:material:13>])
        .EUt(400).duration(sec(30))
        .buildAndRegister();
    gt.laser_engraver.recipeBuilder()
        .inputs([<metaitem:shape.empty>])
        .notConsumable(<ore:craftingLensLightBlue>)
        .outputs([<appliedenergistics2:material:14>])
        .EUt(400).duration(sec(30))
        .buildAndRegister();
    gt.laser_engraver.recipeBuilder()
        .inputs([<metaitem:shape.empty>])
        .notConsumable(<ore:craftingLensYellow>)
        .outputs([<appliedenergistics2:material:15>])
        .EUt(400).duration(sec(30))
        .buildAndRegister();
    gt.laser_engraver.recipeBuilder()
        .inputs([<metaitem:shape.empty>])
        .notConsumable(<ore:craftingLensRed>)
        .outputs([<appliedenergistics2:material:19>])
        .EUt(400).duration(sec(30))
        .buildAndRegister();

    gt.alloy_smelter.recipeBuilder()
        .inputs([<ore:dustGlass> * 2, <ore:dustQuartz>])
        .outputs([<appliedenergistics2:part:140>])
        .EUt(8).duration(sec(4))
        .buildAndRegister();


    // Packaged Auto
    gt.assembler.recipeBuilder()
        .inputs([<minecraft:ender_eye>, <ore:stickHsse> * 4, <ore:plateGold> * 4])
        .fluidInputs(<liquid:nitinol_a> * (144 * 16))
        .outputs([<packagedauto:package_component>])
        .EUt(1024).duration(sec(60))
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs([apMatPlate * 1, quartzGlass * 2, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>])
        .fluidInputs(<liquid:nitinol_a> * (144 * 16))
        .outputs([<packagedauto:me_package_component>])
        .EUt(1024).duration(sec(60))
        .buildAndRegister();

    //Add Blank Pattern Recipe
	gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:23>, <appliedenergistics2:quartz_glass> * 2, <ore:plateIron> * 2)
        .fluidInputs([<liquid:plastic> * 288])
        .outputs(<appliedenergistics2:material:52>)
        .duration(80)
        .EUt(160)
        .buildAndRegister();
    //Add Charged Certus Quartz recipe
	gt.polarizer.recipeBuilder()
        .inputs(<appliedenergistics2:material:10>)
        .outputs(<appliedenergistics2:material:1>)
        .duration(20)
        .EUt(20)
        .buildAndRegister();

//Add 1k Storage cell Recipe
	gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <ore:plateCertusQuartz> * 4, <ore:wireFineRedAlloy> * 8, gt.getCirc("MV"))
        .outputs(<appliedenergistics2:material:35>)
        .duration(sec(22))
        .EUt(160)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 4, <ore:wireFineRedAlloy> * 8, <appliedenergistics2:material:35> * 3)
        .outputs(<appliedenergistics2:material:36>)
        .duration(sec(22))
        .EUt(160)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 4, <ore:wireFineRedAlloy> * 8, <appliedenergistics2:material:36> * 3)
        .outputs(<appliedenergistics2:material:37>)
        .duration(sec(22))
        .EUt(160)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 4, <ore:wireFineRedAlloy> * 8, <appliedenergistics2:material:37> * 3)
        .outputs(<appliedenergistics2:material:38>)
        .duration(sec(22))
        .EUt(160)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 16, <ore:wireFineRedAlloy> * 32, <appliedenergistics2:material:38> * 3)
        .outputs(<extracells:storage.component:0>)
        .duration(sec(30))
        .EUt(600)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 16, <ore:wireFineRedAlloy> * 32, <extracells:storage.component:0> * 3)
        .outputs(<extracells:storage.component:1>)
        .duration(sec(30))
        .EUt(600)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 16, <ore:wireFineRedAlloy> * 32, <extracells:storage.component:1> * 3)
        .outputs(<extracells:storage.component:2>)
        .duration(sec(30))
        .EUt(600)
        .buildAndRegister();
    gt.assembler.recipeBuilder()
        .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <ore:plateCertusQuartz> * 16, <ore:wireFineRedAlloy> * 32, <extracells:storage.component:2> * 3)
        .outputs(<extracells:storage.component:3>)
        .duration(sec(30))
        .EUt(600)
        .buildAndRegister();

//Add Fluix Glass Cable Recipe
	gt.alloy_smelter.recipeBuilder()
        .inputs(<appliedenergistics2:part:140>, <ore:crystalFluix>*2)
        .outputs(<appliedenergistics2:part:16> * 2)
        .duration(40)
        .EUt(40)
        .buildAndRegister();

    // Condenser
    gt.assembler.recipeBuilder()
        .inputs([matPlate * 4, <ore:crystalPureFluix> * 64, quartzGlass * 4, <metaitem:electric.piston.hv> * 4])
        .outputs([<appliedenergistics2:condenser>])
        .EUt(418).duration(sec(60))
        .buildAndRegister();

    // Resonanting Crystal
    Aggregator.removeRecipe(<threng:material:5>);
    gt.chemical_reactor.recipeBuilder()
        .inputs([<ore:crystalPureFluix>, <appliedenergistics2:material:45> * 2])
        .fluidInputs([<liquid:ender> * 250, <liquid:redstone> * 576])
        .outputs([<threng:material:5>])
        .EUt(1024).duration(sec(60))
        .buildAndRegister();

    // Fluix Steel
    Aggregator.removeRecipe(<threng:material:1>);
    gt.mixer.recipeBuilder()
        .inputs([<ore:dustFluix> * 2, <ore:dustCarbon> * 2, <appliedenergistics2:material:45>])
        .outputs([<threng:material:1>])
        .EUt(90).duration(sec(6))
        .buildAndRegister();
    gt.blast_furnace.recipeBuilder()
		.inputs([<threng:material:1> * 1, <ore:ingotSteel>])
		.property("temperature", 2700)
		.outputs([<threng:material:0> * 1])
		.duration(sec(20))
		.EUt(120)
		.buildAndRegister();
}

function init() {
	// Un-named recipes
	craft.process(addShaped, false);
    craft.process(addShapeless);
	craft.removeRecipes(removeRecipes);
	craft.removeFurnace(removeFurnace);

    machineRecipes();
}