import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;

function generateRecipe(plate as IOreDictEntry, doublePlate as IOreDictEntry, dur as float) {

    metal_bender.recipeBuilder().EUt(30)
        .duration(dur * 20)
        .inputs(plate * 2)
        .property("circuit", 2)
        .outputs(doublePlate.firstItem)
        .buildAndRegister();
}

generateRecipe(<ore:plateSteel>, <ore:plateDoubleSteel>, 2.8);
generateRecipe(<ore:plateTungstenSteel>, <ore:plateDoubleTungstenSteel>, 5.9);
generateRecipe(<ore:plateLead>, <ore:plateDoubleLead>, 10.4);
generateRecipe(<ore:plateIridium>, <ore:plateDoubleIridium>, 9.6);
generateRecipe(<ore:plateTitanium>, <ore:plateDoubleTitanium>, 2.4);
generateRecipe(<ore:plateNaquadahAlloy>, <ore:plateDoubleNaquadahAlloy>, 12.1);
generateRecipe(<ore:plateTritanium>, <ore:plateDoubleTritanium>, 14.9);
generateRecipe(<ore:plateBohrium>, <ore:plateDoubleBohrium>, 13.5);
generateRecipe(<ore:plateSeaborgium>, <ore:plateDoubleSeaborgium>, 13.6);