#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

//Bricks
var brick = VanillaFactory.createItem("unfired_porcelain_brick");
brick.register();

//Uncompressed Fuels
var uncompressed_charcoal = VanillaFactory.createItem("uncompressed_charcoal");
var uncompressed_coal_coke = VanillaFactory.createItem("uncompressed_coal_coke");
var uncompressed_lignite_coal = VanillaFactory.createItem("uncompressed_lignite_coal");

uncompressed_charcoal.register();
uncompressed_coal_coke.register();
uncompressed_lignite_coal.register();
