React = require('react')
ExerciseView = require('./exerciseView')
WorkoutNavBarView = require('./workoutNavBarView')

div = React.createFactory('div')

WorkoutView = React.createClass
	componentDidMount: ->
		@props.workout.on 'change', @update

	update: ->
		@forceUpdate()

	render: ->
		div
			className: 'workout-view'
			ExerciseView
				exercise: @props.workout.get_current_exercise()
			div
				className: 'prev-button'
				onClick: @props.workout.get_prev_exercise()
				'<- Prev'
			div
				className: 'next-button'
				onClick: @props.workout.get_next_exercise()
				'Next ->'
			# WorkoutNavBarView
			# 	workout: @props.workout

module.exports = React.createFactory(WorkoutView)
