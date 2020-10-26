events.listen('player.logged_in', function (event) {
	event.data.tell(text.red('Attention!'))
})