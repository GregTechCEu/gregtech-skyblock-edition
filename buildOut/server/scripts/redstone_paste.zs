// Redstone Paste.
recipes.remove(<redstonepaste:redstonepaste>);
chemreactor.recipeBuilder()
    .inputs(<ore:dustRedstone>*4)
    .inputs(<ore:slimeball>)
    .fluidInputs(<liquid:glue>*100)
    .outputs(<redstonepaste:redstonepaste>*16)
    .EUt(28)
    .duration(30)
    .buildAndRegister();

// Add sticky repeater recipe.
recipes.remove(<redstonepaste:stickyrepeater>);
recipes.addShapeless("<redstonepaste_stickyrepeater>", <redstonepaste:stickyrepeater>,
 [<minecraft:repeater>,<redstonepaste:redstonepaste>]);

// Add sticky comparator recipe.
recipes.remove(<redstonepaste:stickycomparator>);
recipes.addShapeless("<redstonepaste_stickycomparator>", <redstonepaste:stickycomparator>,
 [<minecraft:comparator>,<redstonepaste:redstonepaste>]);
