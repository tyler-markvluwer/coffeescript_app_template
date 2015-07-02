React = require('react')
TimerView = require('./timerView')

print = (args) ->
	console.log args

div = React.createFactory('div')
ul = React.createFactory('ul')
li = React.createFactory('li')
br = React.createFactory('br')

ExerciseView = React.createClass
	componentDidMount: ->
		print "exercise mount"
		# @setState({exercise: @props.exercise})
		@props.exercise.on 'change', @update

	update: ->
		print "exercise update"
		@forceUpdate()

	getInitialState: ->
		return {exercise: @props.exercise}

	render: ->
		print "exercise render"
		div
			className: 'exercise-info'
			ul
				className: 'exercise-attrs'
				li
					'\nExercise Name: ' + @state.exercise.name
				li
					'\nSets Remaining: ' + @state.exercise.sets_remaining
				li
					'\nReps: ' + @state.exercise.motion.reps
				li
					'\nWeight: ' + @state.exercise.motion.weight
			TimerView
				timer: @state.exercise.timer

module.exports = React.createFactory(ExerciseView)
