EventEmitter = require('events').EventEmitter


class Timer extends EventEmitter
	constructor: (@countdown_time) ->
		@secs_remaining = @countdown_time
		@paused = true
		console.log "secs_remaining: " + @secs_remaining

	start: () ->
		@paused = false
		@countdown = setInterval(
			() =>
				@secs_remaining--
				@emit 'change'
				console.log(@secs_remaining)
			1000
		)
	pause: () ->
		@paused = true
		@emit 'change'
		clearInterval(@countdown)

	reset: () ->
		@pause()
		@secs_remaining = @countdown_time
		@emit 'change'
		console.log "resetting to: " + @secs_remaining


module.exports = Timer