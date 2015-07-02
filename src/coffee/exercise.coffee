Timer = require('./timer')
Motion = require('./motion')
EventEmitter = require('events').EventEmitter

print = (args) ->
	console.log args

class Exercise extends EventEmitter
	constructor: (@name, weight, reps, @sets, rest_time) ->
		@timer = new Timer(rest_time)
		@motion = new Motion(@name, weight, reps)
		@sets_remaining = @sets

	complete_set: () ->
		@sets_remaining--
		@emit 'change'

	add_set: () ->
		@sets_remaining++
		@emit 'change'

	get_rest_time: () ->
		return @rest_time

	start_rest: () ->
		@timer.start()
		@emit 'change'

	pause_rest: () ->
		@timer.pause()
		@emit 'change'

	reset_rest: () ->
		@timer.reset()
		@emit 'change'

	to_json: () ->
		this_json = JSON.stringify(this)
		console.log(this_json)

	write_to_memory: (username) ->
		key = username + '-exercise-' + @name
		localStorage.setItem(key, @to_json)

module.exports = Exercise
