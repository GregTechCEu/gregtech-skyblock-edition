import crafttweaker.item.IItemStack;

//remove buffer
mods.jei.JEI.removeAndHide(<volumetricflask:buffer>);

//change recipes for volumetricflasks
val flasks = [
<volumetricflask:volumetric_flask_16>,
<volumetricflask:volumetric_flask_32>,
<volumetricflask:volumetric_flask_18>,
<volumetricflask:volumetric_flask_36>,
<volumetricflask:volumetric_flask_72>,
<volumetricflask:volumetric_flask_144>,
<volumetricflask:volumetric_flask_100>,
<volumetricflask:volumetric_flask_1000>,
<volumetricflask:volumetric_flask_50>,
<volumetricflask:volumetric_flask_250>,
<volumetricflask:volumetric_flask_2000>,
<volumetricflask:volumetric_flask_4000>,
<volumetricflask:volumetric_flask_8000>,
<volumetricflask:volumetric_flask_16000>,
<volumetricflask:volumetric_flask_32000>,
<volumetricflask:volumetric_flask_64000>,
<volumetricflask:volumetric_flask_33>,
<volumetricflask:volumetric_flask_133>,
<volumetricflask:volumetric_flask_300>
] as IItemStack[];


for i, fl in flasks {
recipes.remove(fl);
alloy_smelter.recipeBuilder()
	.inputs(<minecraft:glass_bottle>)
	.circuit(i)
	.outputs(fl)
	.duration(20)
	.EUt(30)
	.buildAndRegister();
}