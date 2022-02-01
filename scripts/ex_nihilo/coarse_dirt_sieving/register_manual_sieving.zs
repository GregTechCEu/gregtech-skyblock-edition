import mods.exnihilocreatio.Sieve;

import scripts.ex_nihilo.coarse_dirt_sieving.item_rate_maps.item_rate_maps
    as item_rate_maps;

for item_rate_map in item_rate_maps {
    for item, drop_rate in item_rate_map {
        Sieve.addStringMeshRecipe(coarse_dirt, item*1, drop_rate);
    }
}