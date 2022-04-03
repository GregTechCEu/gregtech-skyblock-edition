// Wireless transmitter.
recipes.remove(<appliedenergistics2:material:41>);
assembler.recipeBuilder()
    .inputs(<ore:pearlFluix>)
    .inputs(<metaitem:emitter.hv>)
    .inputs(<ore:plateStainlessSteel>*3)
    .fluidInputs(<liquid:plastic>*144)
    .outputs(<appliedenergistics2:material:41>)
    .duration(20)
    .EUt(500)
    .buildAndRegister();

// Wireless terminal.
recipes.remove(<appliedenergistics2:wireless_terminal>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:41>)
    .inputs(<metaitem:terminal>)
    .inputs(<ore:plateStainlessSteel>*4)
    .inputs(<metaitem:energy_crystal>)
    .fluidInputs(<liquid:plastic>*144)
    .outputs(<appliedenergistics2:wireless_terminal>)
    .duration(20)
    .EUt(500)
    .buildAndRegister();

// Wireless booster
recipes.remove(<appliedenergistics2:material:42>);
assembler.recipeBuilder()
    .inputs(<metaitem:emitter.hv>)
    .inputs(<ore:dustFluix>)
    .inputs(<ore:plateStainlessSteel>*3)
    .inputs(<ore:dustEnderPearl>)
    .fluidInputs(<liquid:plastic>*72)
    .outputs(<appliedenergistics2:material:42>*2)
    .duration(20)
    .EUt(500)
    .buildAndRegister();


//advanced card
recipes.remove(<appliedenergistics2:material:28>);
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>*4)
    .inputs(<appliedenergistics2:material:23>)
    .inputs(<ore:wireFineRedAlloy>*8)
    .inputs(<appliedenergistics2:material:24>*2)
    .fluidInputs(<liquid:plastic>*144)
    .outputs(<appliedenergistics2:material:28>)
    .duration(30)
    .EUt(120)
    .buildAndRegister();

//basic card
recipes.remove(<appliedenergistics2:material:25>);
assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>*4)
    .inputs(<appliedenergistics2:material:23>)
    .inputs(<ore:wireFineCopper>*4)
    .inputs(<ore:wireGtSingleGold>*2)
    .fluidInputs(<liquid:plastic>*72)
    .outputs(<appliedenergistics2:material:25>)
    .duration(15)
    .EUt(120)
    .buildAndRegister();