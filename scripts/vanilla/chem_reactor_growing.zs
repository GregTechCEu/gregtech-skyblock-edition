import crafttweaker.item.IItemStack;


// Add Mushroom recipes..
var mushrooms = [
    <minecraft:brown_mushroom>,
    <minecraft:red_mushroom>
] as IItemStack[];
for mushroom in mushrooms {
    chemreactor.recipeBuilder()
        .notConsumable(mushroom*1)
        .fluidInputs(<liquid:witchwater>*1000)
        .outputs(mushroom*5)
        .duration(500)
        .EUt(8)
        .buildAndRegister();
}
