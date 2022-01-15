//remove the chisel charcoal block recipe
recipes.remove(<chisel:block_charcoal2:1>);

//change auto chisel recipe
recipes.remove(<chisel:auto_chisel>);
recipes.addShaped("auto_chisel", <chisel:auto_chisel>,
 [[<metaitem:conveyor.module.lv>,	<chisel:chisel_iron>,			<metaitem:robot.arm.lv>],
  [<ore:plateSteel>,				<gregtech:machine:986>,			<ore:plateSteel>],
  [<ore:plateSteel>,				<ore:circuitBasic>,				<ore:plateSteel>]]);

//change ichisel recipe
recipes.remove(<chisel:chisel_hitech>);
recipes.addShapeless("chisel_hitech", <chisel:chisel_hitech>,
 [	<metaitem:robot.arm.lv>,
	<ore:circuitBasic>,	
	<chisel:chisel_diamond>  
  ]);