//
// Logistic Pipes
//

var SteelRod = <ore:stickSteel>;
var MVMachineHull = <gregtech:machine_casing:2>;
var Itemduct = <thermaldynamics:duct_32>;
var BlackSteelPlate = <ore:plateBlackSteel>;

recipes.remove(<logisticspipes:frame>);
recipes.remove(<logisticspipes:pipe_transport_basic>);

recipes.addShaped(<logisticspipes:frame>,
            [[BlackSteelPlate, BlackSteelPlate, BlackSteelPlate],
            [BlackSteelPlate, MVMachineHull, BlackSteelPlate],
            [BlackSteelPlate, BlackSteelPlate, BlackSteelPlate]]);
recipes.addShaped(<logisticspipes:pipe_transport_basic>,
            [[SteelRod, Itemduct, SteelRod],
            [Itemduct, Itemduct, Itemduct],
            [SteelRod, Itemduct, SteelRod]]);