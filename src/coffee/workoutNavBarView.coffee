React = require('react')
div = React.createFactory('div')
button = React.createFactory('button')

WorkoutNavBarView = React.createClass
	nextExercise: ->
		@props.workout.get_next_exercise()

	prevExercise: ->
		@props.workout.get_prev_exercise()

	render: ->
		div
			className: 'row'
			div
				className: 'button-container'
				button
					type: 'button'
					className: 'btn btn-default'
					onClick: @prevExercise
					'<- Prev'
				button
					type: 'button'
					className: 'btn btn-default pull-right'
					onClick: @nextExercise
					'Next ->'

module.exports = React.createFactory(WorkoutNavBarView)
