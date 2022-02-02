// Change recipe for personal shrinking device.
recipes.remove(<compactmachines3:psd>);
recipes.addShaped("personal shrinking device", <compactmachines3:psd>,
 [[null,                    <minecraft:glass_pane>,    null],
  [<minecraft:ender_pearl>, <metaitem:terminal>,       <minecraft:ender_pearl>],
  [null,                    <ore:plateStainlessSteel>, null]]);

// Change recipe for miniaturization field projector.
recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped("miniaturization field projector", <compactmachines3:fieldprojector>*4,
 [[<metaitem:emitter.hv>,     <metaitem:circuit.vacuum_tube>, <metaitem:emitter.hv>],
  [<ore:lensEmerald>,         <gregtech:machine:988>,         <ore:lensDiamond>],
  [<metaitem:energy_crystal>, <compactmachines3:psd>,         <metaitem:energy_crystal>]]);
