import mods.gregtech.recipe.RecipeMap;

// Change recipe for building gadget.
recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped("buildinggadget",<buildinggadgets:buildingtool>,
 [[<metaitem:robot.arm.mv>, <metaitem:emitter.mv>,    <metaitem:robot.arm.mv>],
  [<ore:plateAluminium>,    <ore:circuitMv>,        <ore:plateAluminium>],
  [<ore:plateAluminium>,    <metaitem:power_unit.mv>, <ore:plateAluminium>]]);

// Change recipe for copy paste gadget.
recipes.remove(<buildinggadgets:copypastetool>);
recipes.addShaped("copypastetool",<buildinggadgets:copypastetool>,
 [[<metaitem:robot.arm.mv>,               <metaitem:sensor.mv>,     <metaitem:robot.arm.mv>],
  [<ore:plateAluminium>,                  <ore:circuitMv>,        <ore:plateAluminium>],
  [<metaitem:plate.random_access_memory>, <metaitem:power_unit.mv>, <metaitem:plate.random_access_memory>]]);

// Change recipe for exchanger gadget.
recipes.remove(<buildinggadgets:exchangertool>);
recipes.addShaped("exchangertool",<buildinggadgets:exchangertool>,
 [[<metaitem:robot.arm.mv>,      <metaitem:component.grinder.diamond>, <metaitem:robot.arm.mv>],
  [<metaitem:electric.motor.mv>, <ore:circuitMv>,                    <metaitem:electric.motor.mv>],
  [<ore:plateAluminium>,         <metaitem:power_unit.mv>,             <ore:plateAluminium>]]);

// Change recipe for destruction gadget.
recipes.remove(<buildinggadgets:destructiontool>);
recipes.addShaped("destructiontool",<buildinggadgets:destructiontool>,
 [[<metaitem:component.grinder.diamond>, <metaitem:component.grinder.diamond>, <metaitem:component.grinder.diamond>],
  [<metaitem:electric.motor.mv>,         <ore:circuitMv>,                    <metaitem:electric.motor.mv>],
  [<ore:plateAluminium>,                 <metaitem:power_unit.mv>,             <ore:plateAluminium>]]);

// Change recipe for template manager.
recipes.remove(<buildinggadgets:templatemanager>);
recipes.addShaped("templatemanager",<buildinggadgets:templatemanager>,
 [[<ore:plateAluminium>, <metaitem:terminal>,    <ore:plateAluminium>],
  [<ore:circuitMv>,    <gregtech:machine:987>, <ore:circuitMv>],
  [<ore:plateAluminium>, <ore:circuitMv>,      <ore:plateAluminium>]]);


// Change recipe for construction paste container.
recipes.remove(<buildinggadgets:constructionpastecontainer>);
recipes.addShaped("constructionpastecontainer",<buildinggadgets:constructionpastecontainer>,
 [[<ore:plateSteel>, <ore:plateSteel>,                  <ore:plateSteel>],
  [<ore:plateSteel>, <metaitem:large_fluid_cell.steel>, <ore:plateSteel>],
  [<ore:plateSteel>, <ore:plateSteel>,                  <ore:plateSteel>]]);

// Change recipe for construction paste container T2.
recipes.remove(<buildinggadgets:constructionpastecontainert2>);
recipes.addShaped("constructionpastecontainert2",<buildinggadgets:constructionpastecontainert2>,
 [[<buildinggadgets:constructionpastecontainer>, <ore:plateAluminium>, <buildinggadgets:constructionpastecontainer>],
  [<ore:plateAluminium>,                         <ore:plateAluminium>, <ore:plateAluminium>],
  [<buildinggadgets:constructionpastecontainer>, <ore:plateAluminium>, <buildinggadgets:constructionpastecontainer>]]);

// Change recipe for construction paste container T3.
recipes.remove(<buildinggadgets:constructionpastecontainert3>);
recipes.addShaped("constructionpastecontainert3",<buildinggadgets:constructionpastecontainert3>,
 [[<buildinggadgets:constructionpastecontainert2>, <ore:plateStainlessSteel>, <buildinggadgets:constructionpastecontainert2>],
  [<ore:plateStainlessSteel>,                      <ore:plateStainlessSteel>, <ore:plateStainlessSteel>],
  [<buildinggadgets:constructionpastecontainert2>, <ore:plateStainlessSteel>, <buildinggadgets:constructionpastecontainert2>]]);

// Change recipe for Creative Paste Container.
recipes.remove(<buildinggadgets:constructionpastecontainercreative>);
recipes.addShaped("constructionpastecontainercreative",<buildinggadgets:constructionpastecontainercreative>,
 [[<buildinggadgets:constructionpastecontainert3>, <metaitem:field.generator.ev>, <buildinggadgets:constructionpastecontainert3>],
  [<metaitem:field.generator.ev>,                  <ore:circuitIv>,            <metaitem:field.generator.ev>],
  [<buildinggadgets:constructionpastecontainert3>, <metaitem:field.generator.ev>, <buildinggadgets:constructionpastecontainert3>]]);

// Change recipe for construction paste.
recipes.remove(<buildinggadgets:constructionblockpowder>);
RecipeMap.getByName("fluid_solidifier").recipeBuilder()
    .notConsumable(<metaitem:shape.mold.ball>)
    .fluidInputs(<liquid:construction_foam>*144)
    .outputs(<buildinggadgets:constructionpaste>)
    .EUt(42)
    .duration(5)
    .buildAndRegister();

