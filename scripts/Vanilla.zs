import crafttweaker.item.IItemStack;

//Add Wood Recipes
var saplings = [
    <minecraft:sapling>,
    <minecraft:sapling:1>,
    <minecraft:sapling:2>,
    <minecraft:sapling:3>,
    <minecraft:sapling:4>,
    <minecraft:sapling:5>,
    <gregtech:sapling>
] as IItemStack[];

var logs = [
    <minecraft:log> * 64,
    <minecraft:log:1> * 64,
    <minecraft:log:2> * 64,
    <minecraft:log:3> * 64,
    <minecraft:log2> * 64,
    <minecraft:log2:1> * 64,
    <gregtech:log> * 64
] as IItemStack[];

for i, sapling in saplings {
    chemreactor.recipeBuilder()
        .notConsumable(sapling)
        .fluidInputs(<liquid:water>*1000)
        .outputs(logs[i])
        .outputs(logs[i])
        .duration(1200)
        .EUt(16)
        .buildAndRegister();
}