React = require('react')

# tag factories
div = React.createFactory('div')

appView = React.createClass
    #################################
    #       User Functions
    #################################
    handleButtonClick: () ->
        @props.model.increment_click_count() # don't forget parentheses (function call operator). Hard bug to find
    
    #################################
    #       React Functions
    #################################
    componentDidMount: ->
        # print "component mount"
        @props.model.on 'change', @update

    update: ->
        # print "component update"
        console.log "updating"
        @forceUpdate()

    render: ->
        div
            className: 'app-div'        # you can assign both ids and classes
            id: 'awesome-441-app-div'

            div
                className: 'react-div'
                id: 'super-cool-div'
                onClick: @handleButtonClick # no parentheses here, passing the function as an object
                'I am a react div! (click me!)' # innerHTML contents

            div
                className: 'centered-display'
                id: 'clicker-counter-display'
                'clicks: ' + @props.model.get_click_count()

module.exports = React.createFactory(appView)
