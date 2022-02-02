// Storage upgrade recipes.
recipes.remove(<storagedrawers:upgrade_storage>);
recipes.addShaped("Storage Upgrade I", <storagedrawers:upgrade_storage>,
 [[<ore:plateBronze>, <ore:plateBronze>,                 <ore:plateBronze>],
  [<ore:plateBronze>, <storagedrawers:upgrade_template>, <ore:plateBronze>],
  [<ore:plateBronze>, <ore:plateBronze>,                 <ore:plateBronze>]]);

recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped("Storage Upgrade II", <storagedrawers:upgrade_storage:1>,
 [[<ore:plateSteel>, <ore:plateSteel>,                  <ore:plateSteel>],
  [<ore:plateSteel>, <storagedrawers:upgrade_template>, <ore:plateSteel>],
  [<ore:plateSteel>, <ore:plateSteel>,                  <ore:plateSteel>]]);

recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped("Storage Upgrade III", <storagedrawers:upgrade_storage:2>,
 [[<ore:plateAluminium>, <ore:plateAluminium>,              <ore:plateAluminium>],
  [<ore:plateAluminium>, <storagedrawers:upgrade_template>, <ore:plateAluminium>],
  [<ore:plateAluminium>, <ore:plateAluminium>,              <ore:plateAluminium>]]);

recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped("Storage Upgrade IV", <storagedrawers:upgrade_storage:3>,
 [[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>,         <ore:plateStainlessSteel>],
  [<ore:plateStainlessSteel>, <storagedrawers:upgrade_template>, <ore:plateStainlessSteel>],
  [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>,         <ore:plateStainlessSteel>]]);

recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped("Storage Upgrade V", <storagedrawers:upgrade_storage:4>,
 [[<ore:plateTitanium>, <ore:plateTitanium>,               <ore:plateTitanium>],
  [<ore:plateTitanium>, <storagedrawers:upgrade_template>, <ore:plateTitanium>],
  [<ore:plateTitanium>, <ore:plateTitanium>,               <ore:plateTitanium>]]);


// Greggify compacting drawer.
recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped("compdrawers", <storagedrawers:compdrawers>,
 [[<ore:plateWroughtIron>, <ore:circuitPrimitive>, <ore:plateWroughtIron>],
  [<ore:drawerBasic>,      <gregtech:machine:11>,  <ore:drawerBasic>],
  [<ore:plateWroughtIron>, <ore:drawerBasic>,      <ore:plateWroughtIron>]]);

// Greggify drawer controller.
recipes.remove(<storagedrawers:controller>);
recipes.addShaped("controller", <storagedrawers:controller>,
 [[<metaitem:conveyor.module.mv>, <ore:plateAluminium>,   <metaitem:conveyor.module.mv>],
  [<ore:plateAluminium>,          <gregtech:machine:987>, <ore:plateAluminium>],
  [<ore:plateAluminium>,          <ore:circuitGood>,      <ore:plateAluminium>]]);

// Greggify drawer slave.
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped("controllerslave", <storagedrawers:controllerslave>,
 [[<ore:hopper>,     <metaitem:conveyor.module.lv>, <ore:hopper>],
  [<ore:plateSteel>, <gregtech:machine:986>,        <ore:plateSteel>],
  [<ore:plateSteel>, <ore:circuitBasic>,            <ore:plateSteel>]]);
