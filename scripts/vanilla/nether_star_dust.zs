
//adds chanced wither dust output to soul sand centrifuging
<recipemap:centrifuge>.findRecipe(80, [<minecraft:soul_sand:0>], null).remove();
<recipemap:centrifuge>.recipeBuilder()
    .inputs(<minecraft:soul_sand>)
    .chancedOutput(<metaitem:dustTinyCoal>,2000 ,340 )
    .chancedOutput(<metaitem:dustSmallSaltpeter>,8000 ,480 )
    .chancedOutput(<minecraft:sand>,9000 ,130 )
    .chancedOutput(<darkutils:material>, 6000,10 )
    .fluidOutputs(<liquid:oil>*80)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

chemreactor.recipeBuilder()
    .inputs(<ore:dustSmallPotassium>)
    .inputs(<ore:dustSmallLithium>)
    .fluidInputs(<liquid:witchwater>*16000)
    .fluidInputs(<liquid:salt_water>*2000)
    .outputs(<minecraft:ghast_tear>)
    .duration(200)
    .EUt(500)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<darkutils:material>*3)
    .inputs(<minecraft:ghast_tear>)
    .inputs(<ore:dustNetherQuartz>*16)
    .inputs(<ore:dustTinyPlutonium239>)
    .inputs(<ore:dustEnderEye>*4)
    .fluidInputs(<liquid:tritium>*1000)
    .fluidInputs(<liquid:fluorine>*1000)
    .outputs(<metaitem:dustNetherStar>*2)
    .duration(3600)
    .EUt(8000)
    .buildAndRegister();