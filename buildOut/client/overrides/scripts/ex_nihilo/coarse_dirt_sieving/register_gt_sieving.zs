import scripts.ex_nihilo.coarse_dirt_sieving.item_rate_maps.item_rate_maps
    as item_rate_maps;


var builder = electric_sieve.recipeBuilder()
    .notConsumable(string_mesh*1)
    .inputs(coarse_dirt*1)
    .EUt(4)
    .duration(100);

for item_rate_map in item_rate_maps {
    for item, drop_rate in item_rate_map {
        builder = builder.chancedOutput(item*1, drop_rate * 10000, 500);
    }
}

builder.buildAndRegister();
