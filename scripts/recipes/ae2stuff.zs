//
// AE2Stuff
//

var SkyriumPlate = <ore:plateSkyrium>;
var IVMachineHull = <gregtech:machine:505>;
var WirelessAccessPoint = <appliedenergistics2:wireless_access_point>;
var IVCircuit = <ore:circuitElite>;

recipes.remove(<ae2stuff:wireless>);

recipes.addShaped(<ae2stuff:wireless>,
            [[SkyriumPlate,WirelessAccessPoint,SkyriumPlate],
			 [IVCircuit,IVMachineHull,IVCircuit],
			 [SkyriumPlate,IVCircuit,SkyriumPlate]]);