React = require('react')
div = React.createFactory('div')

WorkoutNavBarView = React.createClass
	render: ->
		div
			className: 'nav-bar'
			div
				className: 'left-button'
				onClick: @props.workout.get_prev_exercise()
				'<- Prev'
			div
				className: 'right-button'
				onClick: @props.workout.get_next_exercise()
				'Next ->'

module.exports = React.createFactory(WorkoutNavBarView)
