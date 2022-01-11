//Add Monolith of Experience recipe
recipes.remove(<darkutils:monolith>);
recipes.addShaped("Monolith of Experience", <darkutils:monolith>,
 [[<ore:plateIron>,				<ore:plateIron>,				<ore:plateIron>],
  [<ore:plateIron>,				<minecraft:experience_bottle>,	<ore:plateIron>],
  [<ore:plateStainlessSteel>,	<ore:plateStainlessSteel>,		<ore:plateStainlessSteel>]]);

//Add Monolith of Spawning recipe
recipes.remove(<darkutils:monolith:1>);
recipes.addShaped("Monotlith of Spawning", <darkutils:monolith:1>,
 [[<ore:plateIron>,				<ore:plateIron>,			<ore:plateIron>],
  [<ore:plateIron>,				<darkutils:material:1>,		<ore:plateIron>],
  [<ore:plateStainlessSteel>,	<ore:plateStainlessSteel>,	<ore:plateStainlessSteel>]]);
  
//change recipe for vector plate
recipes.remove(<darkutils:trap_move>);
recipes.addShaped("vector plate ct", <darkutils:trap_move>*8,
 [[null,					null,							null],
  [<ore:plateWroughtIron>,	<ore:plateWroughtIron>,			<ore:plateWroughtIron>],
  [<ore:gearSmallIron>, 	<metaitem:conveyor.module.lv>,	<ore:gearSmallIron>]]);
  

//change recipe for fast vector plate
recipes.remove(<darkutils:trap_move_fast>);
recipes.addShaped("fast vector plate ct", <darkutils:trap_move_fast>*8,
 [[<darkutils:trap_move>,	<darkutils:trap_move>,			<darkutils:trap_move>],
  [<darkutils:trap_move>,	<metaitem:conveyor.module.mv>,	<darkutils:trap_move>],
  [<darkutils:trap_move>,	<darkutils:trap_move>,			<darkutils:trap_move>]]);
  
//change recipe for extreme vector plate
recipes.remove(<darkutils:trap_move_hyper>);
recipes.addShaped("extreme vector plate ct", <darkutils:trap_move_hyper>*8,
 [[<darkutils:trap_move_fast>,	<darkutils:trap_move_fast>,		<darkutils:trap_move_fast>],
  [<darkutils:trap_move_fast>,	<metaitem:conveyor.module.hv>,	<darkutils:trap_move_fast>],
  [<darkutils:trap_move_fast>,	<darkutils:trap_move_fast>,		<darkutils:trap_move_fast>]]);