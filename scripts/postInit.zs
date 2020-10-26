#priority -100

initDissable();
initOreDict();
initRecipes();

function initDissable() {
    scripts.disabled.init();
}

function initOreDict() {
    scripts.oreDict.init();
}

function initRecipes() {
    scripts.gregtech.recipes.init();
    scripts.recipes.applied_energistics2.init();
    scripts.recipes.vanilla.init();
    scripts.recipes.xnet.init();
    scripts.recipes.thermal.init();
    scripts.recipes.rftools.init();
    scripts.recipes.tconstruct.init();
    scripts.recipes.ex_nihilo.init();
}