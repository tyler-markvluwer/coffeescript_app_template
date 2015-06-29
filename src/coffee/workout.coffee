EventEmitter = require('events').EventEmitter

print = (args) ->
	console.log args

class Workout extends EventEmitter
	constructor: (@name, @username) ->
		@exercises = []
		@ex_index = 0

	start_workout: () ->
		start_date = new Date()
		@start = start_date.toString()
		# console.log "start: " + @start

	add_exercise: (new_exercise) ->
		@exercises.push new_exercise

	end_workout: () ->
		end_date = new Date()
		@end = end_date.toString()
		# console.log "end: " + @end

	get_current_exercise: () ->
		return @exercises[@ex_index]

	get_next_exercise: () ->
		print 'getting next exercises'
		if @ex_index < @exercises.length - 1
			@ex_index++
			
		@emit 'change'

	get_prev_exercise: () ->
		print 'getting prev exercises'
		if @ex_index > 0
			@ex_index--
		
		@emit 'change'

	to_json: () ->
		this_json = JSON.stringify(this)
		console.log(this_json)

module.exports = Workout