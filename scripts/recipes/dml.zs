///
/// Deep Mob Learning
///

var blacksteelplate = <ore:plateBlackSteel>;
var sootplate = <deepmoblearning:soot_covered_plate>;
var hvcasing = <gregtech:machine_casing:3>;
var hvmotor = <gregtech:meta_item_1:32602>;
var hvrobotarm = <gregtech:meta_item_1:32652>;
var hvcircuit = <ore:circuitAdvanced>;
var hvsensor = <gregtech:meta_item_1:32692>;
var hvpiston = <gregtech:meta_item_1:32642>;
var hvemitter = <gregtech:meta_item_1:32682>;
var mvemitter = <gregtech:meta_item_1:32681>;
var mvsensor = <gregtech:meta_item_1:32691>;
var aluscrew = <ore:screwAluminium>;
var stainlessscrew = <ore:screwStainlessSteel>;
var mvcircuit = <ore:circuitGood>;
var aluplate = <ore:plateAluminium>;
val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");

recipes.remove(<deepmoblearning:machine_casing>);
recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.remove(<deepmoblearning:extraction_chamber>);
recipes.remove(<deepmoblearning:data_model_blank>);
recipes.remove(<deepmoblearning:polymer_clay>);
recipes.remove(<deepmoblearning:deep_learner>);
recipes.remove(<minecraft:end_stone>);

recipes.addShaped(<deepmoblearning:machine_casing>,
 [[sootplate,blacksteelplate,sootplate],
  [blacksteelplate,hvcasing,blacksteelplate],
  [sootplate,blacksteelplate,sootplate]]);

recipes.addShaped(<deepmoblearning:simulation_chamber>,
 [[hvcircuit,<ore:rodBlaze>,hvcircuit],
  [hvrobotarm,<deepmoblearning:machine_casing>,hvrobotarm],
  [sootplate,hvmotor,sootplate]]);

recipes.addShaped(<deepmoblearning:extraction_chamber>,
 [[hvcircuit,hvsensor,hvcircuit],
  [hvpiston,<deepmoblearning:machine_casing>,hvpiston],
  [sootplate,hvemitter,sootplate]]);

recipes.addShaped(<deepmoblearning:data_model_blank>,
 [[mvemitter,mvsensor,mvemitter],
  [stainlessscrew,mvcircuit,stainlessscrew],
  [aluplate,aluplate,aluplate]]);

recipes.addShaped(<deepmoblearning:deep_learner>,
 [[aluscrew,hvcircuit,aluscrew],
  [sootplate,<deepmoblearning:data_model_blank>,sootplate],
  [aluscrew,hvsensor,aluscrew]]);

alloy_smelter.recipeBuilder()
    .inputs(<ore:dustEnderEye> * 2)
    .inputs(<minecraft:clay> * 1)
    .outputs(<deepmoblearning:polymer_clay> * 6)
    .duration(20)
    .EUt(120)
    .buildAndRegister();