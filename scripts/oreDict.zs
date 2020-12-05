#priority 2600

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

function specialTreatment() {
    //<ore:ingotRedstoneAlloy>.remove(<gregtech:meta_item_1:10237>); //Red Alloy ingot
    <ore:ingotRedAlloy>.remove(<projectred-core:resource_item:103>);
    <ore:blockGlass>.remove(<tconstruct:clear_glass>);
    <ore:ingotRedstoneAlloy>.add(<gregtech:meta_item_1:10237>); //Red Alloy ingot

    //For Recipes
    <ore:fuelCoke>.addAll(<ore:gemCoke>);
    //<ore:ingotRedstoneAlloy>.addAll(<ore:ingotRedAlloy>);
    var siliconWafer =  <gregtech:meta_item_2:32440> ;
    var siliconGlowstoneWafer = <gregtech:meta_item_2:32441> ;
    var siliconNaquadahWafer = <gregtech:meta_item_2:32442> ;
    <ore:silicon>.addItems([siliconWafer, siliconGlowstoneWafer, siliconNaquadahWafer]);
    <ore:blockGlassColorless>.add(<tconstruct:clear_glass>);

    val basiccircuit = <ore:circuitBasic>;
    basiccircuit.remove(<gregtech:meta_item_2:32507>);

    val goodcircuit = <ore:circuitGood>;
    goodcircuit.remove(<gregtech:meta_item_2:32489>);
    goodcircuit.remove(<gregtech:meta_item_2:32490>);

    val elitecircuit = <ore:circuitElite>;
    elitecircuit.remove(<gregtech:meta_item_2:32495>);
    elitecircuit.remove(<gregtech:meta_item_2:32496>);
    
    val cable = <appliedenergistics2:part>.definition;
    //Fluix cables
    for i in 0 to 17 {
        <ore:cableFluix>.add(cable.makeStack(i));
    }

    //Covered cable
    for i in 20 to 37 {
        <ore:cableCovered>.add(cable.makeStack(i));
    }

    //SmartCable
    for i in 40 to 57 {
        <ore:cableSmart>.add(cable.makeStack(i));
    }

    //Dense cable
    for i in 60 to 77 {
        <ore:cableDense>.add(cable.makeStack(i));
    }

    //Dense Covered
    for i in 500 to 517 {
        <ore:cableCoveredDense>.add(cable.makeStack(i));
    }
}

static oresAdd as IItemStack[][IOreDictEntry] = {
    // Gregtech tools
    <ore:gregWrenches> : [
        <gregtech:meta_tool:8>.withEmptyTag(), 
        <gregtech:meta_tool:29>.withEmptyTag(), 
        <gregtech:meta_tool:30>.withEmptyTag(), 
        <gregtech:meta_tool:31>.withEmptyTag()
    ],
    <ore:gregSaws> : [
        <gregtech:meta_tool:5>.withEmptyTag(),
        <gregtech:meta_tool:16>.withEmptyTag(), 
        <gregtech:meta_tool:26>.withEmptyTag(), 
        <gregtech:meta_tool:27>.withEmptyTag(), 
        <gregtech:meta_tool:28>.withEmptyTag(), 
        <gregtech:meta_tool:33>.withEmptyTag(),
    ],
    <ore:gregHoes> : [
        <gregtech:meta_tool:4>.withEmptyTag()
    ],
    <ore:gregAxes> : [
        <gregtech:meta_tool:3>.withEmptyTag()
    ],
    <ore:gregFiles> : [
        <gregtech:meta_tool:9>.withEmptyTag()
    ],
    <ore:gregSwords> : [
        <gregtech:meta_tool:0>.withEmptyTag()
    ],
    <ore:gregScoops> : [
        <gregtech:meta_tool:14>.withEmptyTag()
    ],
    <ore:gregKnives> : [
        <gregtech:meta_tool:17>.withEmptyTag()
    ],
    <ore:gregBlades> : [
        <gregtech:meta_tool:16>.withEmptyTag(),
        <gregtech:meta_tool:17>.withEmptyTag(),
        <gregtech:meta_tool:18>.withEmptyTag(),
        <gregtech:meta_tool:19>.withEmptyTag()
    ],
    <ore:gregMortars> : [
        <gregtech:meta_tool:12>.withEmptyTag()
    ],
    <ore:gregShovels> : [
        <gregtech:meta_tool:2>.withEmptyTag(),
        <gregtech:meta_tool:16>.withEmptyTag(),
    ],
    <ore:gregPlungers> : [
        <gregtech:meta_tool:37>.withEmptyTag()
    ],
    <ore:gregCrowbars> : [
        <gregtech:meta_tool:10>.withEmptyTag(),
        <gregtech:meta_tool:16>.withEmptyTag()
    ],
    <ore:gregPickaxes> : [
        <gregtech:meta_tool:1>.withEmptyTag()
    ],
    <ore:gregBranchCutters> : [
        <gregtech:meta_tool:15>.withEmptyTag()
    ],
    <ore:gregWireCutters> : [
        <gregtech:meta_tool:13>.withEmptyTag()
    ],
    <ore:gregHardHammers> : [
        <gregtech:meta_tool:6>.withEmptyTag()
    ],
    <ore:gregSoftHammers> : [
        <gregtech:meta_tool:7>.withEmptyTag()
    ],
    <ore:gregJackHammers> : [
        <gregtech:meta_tool:32>.withEmptyTag()
    ],
    <ore:gregScrewDrivers> : [
        <gregtech:meta_tool:11>.withEmptyTag(),
        <gregtech:meta_tool:34>.withEmptyTag()
    ],
    <ore:gregMiningDrills> : [
        <gregtech:meta_tool:23>.withEmptyTag(),
        <gregtech:meta_tool:24>.withEmptyTag(),
        <gregtech:meta_tool:25>.withEmptyTag()
    ],
    <ore:gregJackHammers> : [
        <gregtech:meta_tool:32>.withEmptyTag()
    ],
    // GregTech stone types
    <ore:stoneMarble> : [
        <gregtech:mineral>,
        <gregtech:mineral:1>,
        <gregtech:mineral:5>,
        <gregtech:mineral:12>
    ],
    <ore:stoneRedGranite> : [
        <gregtech:granite:1>,
        <gregtech:granite:3>,
        <gregtech:granite:7>,
        <gregtech:granite:13>
    ],
    <ore:stoneBlackGranite> : [
        <gregtech:granite>,
        <gregtech:granite:2>,
        <gregtech:granite:6>,
        <gregtech:granite:12>
    ],
    <ore:stoneBasalt> : [
        <gregtech:mineral:2>,
        <gregtech:mineral:3>,
        <gregtech:mineral:7>,
        <gregtech:mineral:14>
    ],

    //Hatches and Busses
    <ore:anyInputHatch> : [
        <meta_tile_entity:gregtech:fluid_hatch.import.ulv>,
        <meta_tile_entity:gregtech:fluid_hatch.import.lv>,
        <meta_tile_entity:gregtech:fluid_hatch.import.mv>,
        <meta_tile_entity:gregtech:fluid_hatch.import.hv>,
        <meta_tile_entity:gregtech:fluid_hatch.import.ev>,
        <meta_tile_entity:gregtech:fluid_hatch.import.iv>,
        <meta_tile_entity:gregtech:fluid_hatch.import.luv>,
        <meta_tile_entity:gregtech:fluid_hatch.import.zpm>,
        <meta_tile_entity:gregtech:fluid_hatch.import.uv>,
        <meta_tile_entity:gregtech:fluid_hatch.import.max>
    ],
    <ore:anyEnergyInputHatch> : [
        <meta_tile_entity:gregtech:energy_hatch.input.ulv>,
        <meta_tile_entity:gregtech:energy_hatch.input.lv>,
        <meta_tile_entity:gregtech:energy_hatch.input.mv>,
        <meta_tile_entity:gregtech:energy_hatch.input.hv>,
        <meta_tile_entity:gregtech:energy_hatch.input.ev>,
        <meta_tile_entity:gregtech:energy_hatch.input.iv>,
        <meta_tile_entity:gregtech:energy_hatch.input.luv>,
        <meta_tile_entity:gregtech:energy_hatch.input.zpm>,
        <meta_tile_entity:gregtech:energy_hatch.input.uv>,
        <meta_tile_entity:gregtech:energy_hatch.input.max>
    ],
    <ore:anyInputBus> : [
        <meta_tile_entity:gregtech:item_bus.import.ulv>,
        <meta_tile_entity:gregtech:item_bus.import.lv>,
        <meta_tile_entity:gregtech:item_bus.import.mv>,
        <meta_tile_entity:gregtech:item_bus.import.hv>,
        <meta_tile_entity:gregtech:item_bus.import.ev>,
        <meta_tile_entity:gregtech:item_bus.import.iv>,
        <meta_tile_entity:gregtech:item_bus.import.luv>,
        <meta_tile_entity:gregtech:item_bus.import.zpm>,
        <meta_tile_entity:gregtech:item_bus.import.uv>,
        <meta_tile_entity:gregtech:item_bus.import.max>
    ],
    <ore:anyOutputHatch> : [
        <meta_tile_entity:gregtech:fluid_hatch.export.ulv>,
        <meta_tile_entity:gregtech:fluid_hatch.export.lv>,
        <meta_tile_entity:gregtech:fluid_hatch.export.mv>,
        <meta_tile_entity:gregtech:fluid_hatch.export.hv>,
        <meta_tile_entity:gregtech:fluid_hatch.export.ev>,
        <meta_tile_entity:gregtech:fluid_hatch.export.iv>,
        <meta_tile_entity:gregtech:fluid_hatch.export.luv>,
        <meta_tile_entity:gregtech:fluid_hatch.export.zpm>,
        <meta_tile_entity:gregtech:fluid_hatch.export.uv>,
        <meta_tile_entity:gregtech:fluid_hatch.export.max>
    ],
    <ore:anyEnergyOutputHatch> : [
        <meta_tile_entity:gregtech:energy_hatch.output.ulv>,
        <meta_tile_entity:gregtech:energy_hatch.output.lv>,
        <meta_tile_entity:gregtech:energy_hatch.output.mv>,
        <meta_tile_entity:gregtech:energy_hatch.output.hv>,
        <meta_tile_entity:gregtech:energy_hatch.output.ev>,
        <meta_tile_entity:gregtech:energy_hatch.output.iv>,
        <meta_tile_entity:gregtech:energy_hatch.output.luv>,
        <meta_tile_entity:gregtech:energy_hatch.output.zpm>,
        <meta_tile_entity:gregtech:energy_hatch.output.uv>,
        <meta_tile_entity:gregtech:energy_hatch.output.max>
    ],
    <ore:anyOutputBus> : [
        <meta_tile_entity:gregtech:item_bus.export.ulv>,
        <meta_tile_entity:gregtech:item_bus.export.lv>,
        <meta_tile_entity:gregtech:item_bus.export.mv>,
        <meta_tile_entity:gregtech:item_bus.export.hv>,
        <meta_tile_entity:gregtech:item_bus.export.ev>,
        <meta_tile_entity:gregtech:item_bus.export.iv>,
        <meta_tile_entity:gregtech:item_bus.export.luv>,
        <meta_tile_entity:gregtech:item_bus.export.zpm>,
        <meta_tile_entity:gregtech:item_bus.export.uv>,
        <meta_tile_entity:gregtech:item_bus.export.max>
    ],
    <ore:anyLVBatBuff> : [
        <meta_tile_entity:gregtech:battery_buffer.lv.1>,
        <meta_tile_entity:gregtech:battery_buffer.lv.4>,
        <meta_tile_entity:gregtech:battery_buffer.lv.9>,
        <meta_tile_entity:gregtech:battery_buffer.lv.16>
    ],
    <ore:anyMVBatBuff> : [
        <meta_tile_entity:gregtech:battery_buffer.mv.1>,
        <meta_tile_entity:gregtech:battery_buffer.mv.4>,
        <meta_tile_entity:gregtech:battery_buffer.mv.9>,
        <meta_tile_entity:gregtech:battery_buffer.mv.16>
    ],
    <ore:anyHVBatBuff> : [
        <meta_tile_entity:gregtech:battery_buffer.hv.1>,
        <meta_tile_entity:gregtech:battery_buffer.hv.4>,
        <meta_tile_entity:gregtech:battery_buffer.hv.9>,
        <meta_tile_entity:gregtech:battery_buffer.hv.16>
    ],
    <ore:anyEVBatBuff> : [
        <meta_tile_entity:gregtech:battery_buffer.ev.1>,
        <meta_tile_entity:gregtech:battery_buffer.ev.4>,
        <meta_tile_entity:gregtech:battery_buffer.ev.9>,
        <meta_tile_entity:gregtech:battery_buffer.ev.16>
    ],
    <ore:anyIVBatBuff> : [
        <meta_tile_entity:gregtech:battery_buffer.iv.1>,
        <meta_tile_entity:gregtech:battery_buffer.iv.4>,
        <meta_tile_entity:gregtech:battery_buffer.iv.9>,
        <meta_tile_entity:gregtech:battery_buffer.iv.16>
    ],
    <ore:anyLuVBatBuff> : [
        <meta_tile_entity:gregtech:battery_buffer.luv.1>,
        <meta_tile_entity:gregtech:battery_buffer.luv.4>,
        <meta_tile_entity:gregtech:battery_buffer.luv.9>,
        <meta_tile_entity:gregtech:battery_buffer.luv.16>
    ],
    <ore:anyZPMBatBuff> : [
        <meta_tile_entity:gregtech:battery_buffer.zpm.1>,
        <meta_tile_entity:gregtech:battery_buffer.zpm.4>,
        <meta_tile_entity:gregtech:battery_buffer.zpm.9>,
        <meta_tile_entity:gregtech:battery_buffer.zpm.16>
    ],
    <ore:anyUVBatBuff> : [
        <meta_tile_entity:gregtech:battery_buffer.uv.1>,
        <meta_tile_entity:gregtech:battery_buffer.uv.4>,
        <meta_tile_entity:gregtech:battery_buffer.uv.9>,
        <meta_tile_entity:gregtech:battery_buffer.uv.16>
    ],
    <ore:anyMAXBatBuff> : [
        <meta_tile_entity:gregtech:battery_buffer.max.1>,
        <meta_tile_entity:gregtech:battery_buffer.max.4>,
        <meta_tile_entity:gregtech:battery_buffer.max.9>,
        <meta_tile_entity:gregtech:battery_buffer.max.16>
    ],
    <ore:anyQuantumTank> : [
        <meta_tile_entity:gregtech:quantum_tank.mv>,
        <meta_tile_entity:gregtech:quantum_tank.hv>,
        <meta_tile_entity:gregtech:quantum_tank.ev>,
        <meta_tile_entity:gregtech:quantum_tank.iv>
    ],
    <ore:anyQuantumChest> : [
        <meta_tile_entity:gregtech:quantum_chest.mv>,
        <meta_tile_entity:gregtech:quantum_chest.hv>,
        <meta_tile_entity:gregtech:quantum_chest.ev>,
        <meta_tile_entity:gregtech:quantum_chest.iv>
    ],
    <ore:anyRotorHolder> : [
        <meta_tile_entity:gregtech:rotor_holder.hv>,
        <meta_tile_entity:gregtech:rotor_holder.luv>,
        <meta_tile_entity:gregtech:rotor_holder.max>
    ],
    //other
    <ore:dustQuartz> : [
        <gregtech:meta_item_1:2201>, //Netherqueartz dust
        <gregtech:meta_item_1:2202> //Certus dust
    ],
    <ore:crystalFluix> : [
        <appliedenergistics2:material:12>
    ],
    <ore:crystalCertusQuartz> : [
        <appliedenergistics2:material:10>,
        <gregtech:meta_item_1:8202> //Gregtech certus quartz
    ],
    <ore:gemNetherQuartz> : [
        <appliedenergistics2:material:11>
    ],
    <ore:blockAluminum> : [
        <ore:blockAluminium>.firstItem
    ] // add gregtech block to stupid aluminium oreDict
};

static gt as string = "gregtech";

static ores as string[IOreDictEntry] = {
    <ore:dustCertusQuartz> : gt,
    <ore:dustNetherQuartz> : gt,
    <ore:dustEnderPearl> : gt,

    <ore:ingotBronze> : gt,
    <ore:plateBronze> : gt,
    <ore:blockBronze> : gt,
    <ore:dustBronze> : gt,
    <ore:nuggetBronze> : gt,
    <ore:gearBronze> : gt,

    <ore:ingotCopper> : gt,
    <ore:plateCopper> : gt,
    <ore:blockCopper> : gt,
    <ore:dustCopper> : gt,
    <ore:nuggetCopper> : gt,
    <ore:gearCopper> : gt,

    /*<ore:ingotConstantan> : gt,
    <ore:plateConstantan> : gt,
    <ore:blockConstantan> : gt,
    <ore:dustConstantan> : gt,
    <ore:nuggetConstantan> : gt,
    <ore:gearConstantan> : gt,*/

    <ore:gearDiamond> : gt,

    <ore:ingotElectrum> : gt,
    <ore:plateElectrum> : gt,
    <ore:blockElectrum> : gt,
    <ore:dustElectrum> : gt,
    <ore:nuggetElectrum> : gt,
    <ore:gearElectrum> : gt,

    <ore:ingotEnderium> : gt,
    <ore:plateEnderium> : gt,
    <ore:blockEnderium> : gt,
    <ore:dustEnderium> : gt,
    <ore:nuggetEnderium> : gt,
    <ore:gearEnderium> : gt,

    <ore:plateGold> : gt,
    <ore:dustGold> : gt,
    <ore:gearGold> : gt,

    <ore:ingotInvar> : gt,
    <ore:plateInvar> : gt,
    <ore:blockInvar> : gt,
    <ore:dustInvar> : gt,
    <ore:nuggetInvar> : gt,
    <ore:gearInvar> : gt,

    <ore:ingotIridium> : gt,
    <ore:plateIridium> : gt,
    <ore:blockIridium> : gt,
    <ore:dustIridium> : gt,
    <ore:nuggetIridium> : gt,
    <ore:gearIridium> : gt,

    <ore:plateIron> : gt,
    <ore:dustIron> : gt,
    <ore:gearIron> : gt,

    <ore:ingotLead> : gt,
    <ore:plateLead> : gt,
    <ore:blockLead> : gt,
    <ore:dustLead> : gt,
    <ore:nuggetLead> : gt,
    <ore:gearLead> : gt,

    <ore:ingotNickel> : gt,
    <ore:plateNickel> : gt,
    <ore:blockNickel> : gt,
    <ore:dustNickel> : gt,
    <ore:nuggetNickel> : gt,
    <ore:gearNickel> : gt,

    <ore:ingotPlatinum> : gt,
    <ore:platePlatinum> : gt,
    <ore:blockPlatinum> : gt,
    <ore:dustPlatinum> : gt,
    <ore:nuggetPlatinum> : gt,
    <ore:gearPlatinum> : gt,

    <ore:gemRuby> : gt,

    <ore:gemSapphire> : gt,

    <ore:ingotSilver> : gt,
    <ore:plateSilver> : gt,
    <ore:blockSilver> : gt,
    <ore:dustSilver> : gt,
    <ore:nuggetSilver> : gt,
    <ore:gearSilver> : gt,

    <ore:ingotSteel> : gt,
    <ore:plateSteel> : gt,
    <ore:blockSteel> : gt,
    <ore:dustSteel> : gt,
    <ore:nuggetSteel> : gt,
    <ore:gearSteel> : gt,

    <ore:ingotTin> : gt,
    <ore:plateTin> : gt,
    <ore:blockTin> : gt,
    <ore:dustTin> : gt,
    <ore:nuggetTin> : gt,
    <ore:gearTin> : gt,

    <ore:gearWood> : gt
};

function init() {

    specialTreatment();

    for ore, mod in ores {
        for entry in ore.items {
            val entryMod as string = entry.definition.id.split(":")[0];
            if(mod != entryMod) {
                ore.remove(entry);
                utils.removeAndHide(entry);
            }
        }
    }

    for concrete in <ore:blockConcrete>.items {
        val entryMod as string = concrete.definition.id.split(":")[0];
        if(entryMod != "gregtech") {
            <ore:blockConcrete>.remove(concrete);
        }
    }

    for ore, items in oresAdd {
        ore.addItems(items);
    }
}