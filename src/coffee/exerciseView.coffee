React = require('react')
TimerView = require('./timerView')

print = (args) ->
	console.log args

div = React.createFactory('div')
ul = React.createFactory('ul')
li = React.createFactory('li')
br = React.createFactory('br')

col_size = 'col-md-4'

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
			className: 'container'
			div
				className: 'row exercise-info'
				div
					className: col_size
					'\nExercise Name: ' + @state.exercise.name
				div
					className: col_size
					'\nSets Remaining: ' + @state.exercise.sets_remaining
				div
					className: col_size
					'\nReps: ' + @state.exercise.motion.reps
				div
					className: col_size
					'\nWeight: ' + @state.exercise.motion.weight
			div
				className: 'row timer-container'
				TimerView
					timer: @state.exercise.timer

module.exports = React.createFactory(ExerciseView)
