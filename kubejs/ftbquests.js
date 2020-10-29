
var questsS = [
	['furnace_mv', 'furnace_lv', 'furnace_steam'],
	['chemical_reactor_ev', 'chemical_reactor_hv', 'chemical_reactor_lv']
];

questsS.forEach(function(quests, i, arrayS) {
	quests.forEach(function(quest, j, array) {
		events.listen('ftbquests.completed.' + quest, function(event) {
			var player = event.getOnlineMembers().getFirst();
			var ftbquests = player.data.ftbquests;
			player.tell('Completed ' + quest);
			if(j < quests.length) {
				var nextQuest = quests[j+1];
				if(!ftbquests.isCompleted(nextQuest) && ftbquests.canStartQuest(nextQuest)) {
					ftbquests.complete(nextQuest);
				}
			}
		});
	});
});


var resetsBonsai = [
	'periodic_table_all',
	'integrated_circuit_stack',
	'first_steel'
];

resetsBonsai.forEach(function(quest, i, array) {
	events.listen('ftbquests.completed.' + quest, function(event) {
		var player = event.getOnlineMembers().getFirst();
		var ftbquests = player.data.ftbquests;
		player.tell('Hopping Bonsai has been restocked');
		if(ftbquests.isCompleted('hopping_bonsai_shop')) {
			ftbquests.reset('hopping_bonsai_shop')
		}
	});
});