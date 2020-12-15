#priority 3100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;

zenClass Utils {
	zenConstructor() {
	}
	
	function toNBTstring(mat as string) as string {
		var word as string = mat;
		print("xx--DEBUG--xx toNBTstring() word= " + word);

		var run as bool = hasUpperCase(word);
		print("xx--DEBUG--xx toNBTstring() has Uppercase? " + run);

		while(run) {
			word = toNBTonce(word);
			run = hasUpperCase(word);
		}
		#print("xx--DEBUG--xx");
		print("xx--DEBUG--xx toNBTstring() return " + word.toLowerCase());
		return word.toLowerCase();
	}

	function toNBTonce(s as string) as string {
		var length as int = s.length();
		var i as int = 0;
		var word as string = s;
		while(s.length > i) {
			if(isUpperCase(s[length - 1]) & length != 1) { 	//length = 5
				print("xx--DEBUG--xx toNBTonce() found Uppercase");

				var upperCase as string = s[length - 1];
				var parts as string[] = s.split(s[length - 1]);

				if(s[0] == s[length - 1]) {
					word = upperCase.toLowerCase() + parts[1] + "_"  + upperCase.toLowerCase() + parts[2]; 
				} else {
					word = parts[0] + "_"  + upperCase.toLowerCase() + parts[1]; 
				}
			}
			length -= 1;
			i += 1;
		}
		print("xx--DEBUG--xx toNBTonce() word= " + word);
		return word;
	}

	function hasUpperCase(s as string) as bool {
		for j in 0 .. s.length() - 1 {
			if(isUpperCase(s[j]) & j != 0) {
				return true;
			}
		}
		return false;
	}

	function isUpperCase(s as string) as bool {
		var abc as string[] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
		for char in abc {
			if(s == char) {
				return true;
			}
		}
		return false;
	}

    //JEI
    function removeAndHide(itemList as IIngredient[]) {
        for item in itemList {
			//mods.ItemStages.removeItemStage(item);
            //mods.ItemStages.addItemStage(disabled, item);
            mods.jei.JEI.removeAndHide(item);
            //recipes.remove(item);
			//mods.ItemStages.setUnfamiliarName("Garbage", item);
        }
    }
	function removeAndHide(item as IIngredient) {
		//mods.ItemStages.removeItemStage(item);
        //mods.ItemStages.addItemStage(disabled, item);
        mods.jei.JEI.removeAndHide(item);
        //recipes.remove(item);
		//mods.ItemStages.setUnfamiliarName("Garbage", item);
    }

    function hideCategory(categorys as string[]) {
        for category in categorys {
            mods.jei.JEI.hideCategory(category);
        }
    }

	function hideNBT(modid as string) {
		for item in loadedMods[modid].items {
			if(item.hasTag) {
				mods.jei.JEI.hide(item);
			}
		}
	}

	function hideNBT(modid as string, metadata as int[]) {
		for item in loadedMods[modid].items {
			for meta in metadata {
				if(item.metadata == meta & item.hasTag) {
					mods.jei.JEI.hide(item);
				}
			}
		}
	}

	function hideNBT(modid as string, items as IItemStack[]) {
		for item in loadedMods[modid].items {
			for validItem in items {
				if(item.matches(validItem) & item.hasTag) {
					mods.jei.JEI.hide(item);
				}
			}
		}
	}

	function oresOf(material as string, filter as string[]) as IItemStack[] {
		var ores as IItemStack[] = [];
		for type in types {
			for density in densitys {
				if(!(filter.length > 0 && (filter has density || filter has type))) {
					val ore = "ore" + density + type + material;
					if(oreDict has ore) {
						for oreItem in oreDict[ore].items {
							ores += oreItem;
						}
					}
				}
			}
		}

		return ores;
	}

	static densitys as string[] = [
		"Poor",
		"",
		"Rich",
		"Pure"
	];

	static types as string[] = [
		"",
		"Gravel",
		"Netherrack",
		"Endstone",
		"Sand",
		"Blackgranite",
		"Redgranite",
		"Marble",
		"Basalt"
	];
}