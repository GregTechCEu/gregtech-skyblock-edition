import crafttweaker.item.IItemStack;

// Crafting unit.
recipes.remove(<appliedenergistics2:crafting_unit>);
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>*4)
    .inputs(<appliedenergistics2:part:16>*4)
    .inputs(<metaitem:hull.hv>)
    .inputs(<appliedenergistics2:material:23>*2)
    .inputs(<appliedenergistics2:material:22>)
    .fluidInputs(<liquid:plastic>*144)
    .outputs(<appliedenergistics2:crafting_unit>)
    .duration(20)
    .EUt(200)
    .buildAndRegister();

// Crafting storage canning.
val aematerial = <appliedenergistics2:material>.definition;
val partss = [35,36,37,38,24] as int[];
val craftedd = [
    <appliedenergistics2:crafting_storage_1k>,
    <appliedenergistics2:crafting_storage_4k>,
    <appliedenergistics2:crafting_storage_16k>,
    <appliedenergistics2:crafting_storage_64k>,
    <appliedenergistics2:crafting_accelerator>
] as IItemStack[];
for i in 0 to 5 {
recipes.remove(craftedd[i]);
canner.recipeBuilder()
    .inputs(<appliedenergistics2:crafting_unit>)
    .inputs(aematerial.makeStack(partss[i]))
    .outputs(craftedd[i])
    .duration(20)
    .EUt(500)
    .buildAndRegister();
}

recipes.remove(<appliedenergistics2:crafting_monitor>);
canner.recipeBuilder()
    .inputs(<appliedenergistics2:crafting_unit>)
    .inputs(<metaitem:cover.screen>)
    .outputs(<appliedenergistics2:crafting_monitor>)
    .duration(20)
    .EUt(500)
    .buildAndRegister();
