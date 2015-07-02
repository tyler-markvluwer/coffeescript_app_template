React = require('react')

Motion = require('./motion')
Timer = require('./timer')
Exercise = require('./exercise')
Workout = require('./workout')
User = require('./user')
WorkoutView = require('./workoutView')

window.user = new User('vluwer')
window.motion = new Motion('Bench Press', 160.0, 8) # 160 lbs
window.timer = new Timer(60) # 60 seconds
window.exercise1 = new Exercise('Bench Press', 160.0, 8, 3, 60)
window.exercise2 = new Exercise('Bicep Curl', 30, 10, 4, 55)

window.workout = new Workout('Chest Workout')
window.workout.add_exercise(exercise1)
window.workout.add_exercise(exercise2)

React.render(
	WorkoutView
		workout: window.workout
		target: 'workout-view'
	document.getElementById('workout-view')
)
