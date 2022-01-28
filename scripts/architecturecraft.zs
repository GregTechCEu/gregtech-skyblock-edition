//energy dense cell recipe
recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped("architecturecraft_sawbench", <architecturecraft:sawbench>,
 [[<ore:plateWroughtIron>,<ore:toolHeadBuzzSawWroughtIron>,<ore:plateWroughtIron>],
  [<ore:stickLongWood>,<ore:workbench>,<ore:stickLongWood>],
  [<ore:stickLongWood>,<ore:frameGtWood>,<ore:stickLongWood>]]);

//removes unneeded crafting items from JEI
mods.jei.JEI.removeAndHide(<architecturecraft:sawblade>);
mods.jei.JEI.removeAndHide(<architecturecraft:largepulley>);
