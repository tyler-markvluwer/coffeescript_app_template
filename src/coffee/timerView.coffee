React = require('react')
StartStopTimerButton = require('./startStopTimerButton')

div = React.createFactory('div')
ul = React.createFactory('ul')
li = React.createFactory('li')
br = React.createFactory('br')

TimerView = React.createClass
	componentDidMount: ->
		console.log "timer mount"
		@props.timer.on 'change', @update

	update: ->
		console.log "timer update"
		@props.timer.on 'change', @update
		@forceUpdate()

	render: ->
		console.log "timer render"
		div
			className: 'timer'
			div
				className: 'timer-view'
				'Time Remaing: ' + @props.timer.secs_remaining
			div
				className: 'timer-controls'
				StartStopTimerButton
					timer: @props.timer

module.exports = React.createFactory(TimerView)
