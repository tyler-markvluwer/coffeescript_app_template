React = require('react')
ExerciseView = require('./exerciseView')
WorkoutNavBarView = require('./workoutNavBarView')

print = (args) ->
	console.log args

div = React.createFactory('div')

WorkoutView = React.createClass
	componentDidMount: ->
		print "workout update"
		@props.workout.on 'change', @update

	getInitialState: ->
		return {
			exercise: @props.workout.get_current_exercise()
		}

	update: ->
		print "workout update"
		@setState({exercise: @props.workout.get_current_exercise()})
		@forceUpdate()

	render: ->
		print "workout render"
		div
			className: 'workout-view'
			ExerciseView
				exercise: @state.exercise
			WorkoutNavBarView
			 	workout: @props.workout

module.exports = React.createFactory(WorkoutView)
