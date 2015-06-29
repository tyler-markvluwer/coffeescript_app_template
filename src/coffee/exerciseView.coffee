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
		@props.exercise.on 'change', @update

	update: ->
		@forceUpdate()

	render: ->
		div
			className: 'exercise-info'
			ul
				className: 'exercise-attrs'
				li
					'\nExercise Name: ' + @props.exercise.name
				li
					'\nSets Remaining: ' + @props.exercise.sets_remaining
				li
					'\nReps: ' + @props.exercise.motion.reps
				li
					'\nWeight: ' + @props.exercise.motion.weight
			TimerView
				timer: @props.exercise.timer

module.exports = React.createFactory(ExerciseView)