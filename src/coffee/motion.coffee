print = (args) ->
	console.log args

class Motion
	constructor: (@name, @weight, @reps) ->
		# provide alternate constructor
		if typeof(@weight) == 'undefined' and typeof @reps == 'undefined'
			# lookup weight and reps from third party resource
			console.log "alternate motion constructor"

		else
			# store this new motion into the db
			@write_to_memory('vluwer') # TODO(tmarkvluwer): don't make this hard coded

	set_weight: (new_weight, username) ->
		@weight = new_weight
		@write_to_memory(username)

	to_json: () ->
		this_json = JSON.stringify(this)
		console.log(this_json)

	write_to_memory: (username) ->
		key = username + @name
		localStorage.setItem(key, @to_json)

module.exports = Motion
