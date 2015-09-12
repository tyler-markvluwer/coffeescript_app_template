React = require('react')

# tag factories
div = React.createFactory('div')

appView = React.createClass
    #################################
    #       User Functions
    #################################
    handleButtonClick: () ->

    
    #################################
    #       React Functions
    #################################
    componentDidMount: ->
        # print "component mount"
        @props.model.on 'change', @update

    update: ->
        # print "component update"
        @forceUpdate()

    render: ->
        div
            className: 'app-div'        # you can assign both ids and classes
            id: 'awesome-441-app-div'

            div
                className: 'react-div'
                id: 'super-cool-div'
                'I am a react div!' # innerHTML contents

            div
                className: 'centered-display'
                id: 'clicker-counter-display'
                '0 clicks' # TODO(tmarkvluwer): make this not hard-coded

module.exports = React.createFactory(appView)
