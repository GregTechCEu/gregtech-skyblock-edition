import crafttweaker.item.IItemStack;

// Clay block.
mixer.recipeBuilder()
    .inputs(<exnihilocreatio:block_dust>*1)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<minecraft:clay>*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Netherrack.
mixer.recipeBuilder()
    .inputs(<minecraft:redstone>*1)
    .fluidInputs(<liquid:lava>*1000)
    .outputs(<minecraft:netherrack>*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// End stone.
mixer.recipeBuilder()
    .inputs(<minecraft:glowstone_dust>*1)
    .fluidInputs(<liquid:lava>*1000)
    .outputs(<minecraft:end_stone>*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();

// Soul Sand.
mixer.recipeBuilder()
    .inputs(<ore:sand>*1)
    .fluidInputs(<liquid:witchwater>*1000)
    .outputs(<minecraft:soul_sand>*1)
    .duration(20)
    .EUt(7)
    .buildAndRegister();


// Slime Block.
var mushrooms = [
	<minecraft:brown_mushroom>,
	<minecraft:red_mushroom>
] as IItemStack[];

for mushroom in mushrooms {
    mixer.recipeBuilder()
        .inputs(mushroom)
        .fluidInputs(<liquid:milk>*1000)
        .outputs(<minecraft:slime>)
        .duration(200)
        .EUt(8)
        .buildAndRegister();
}
