React = require('react') # no ./ prefix
TestApp441 = require('./appView') # notice the './' prefix above for a local file

# import the Model class
Model = require('./model') # doesn't have to be called model

# create an instance of a model
# (consider using a singleton pattern)
model = new Model('app_name', 'app_purpose') # uppercase 'M' to match import name

# make model global for instructional purposes
window.model = model

React.render(
    TestApp441 # which component to mount
        model: model
    document.getElementById('app-view-mount') # where to mount it
)