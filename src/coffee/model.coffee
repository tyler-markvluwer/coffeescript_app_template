EventEmitter = require('events').EventEmitter # used to tell UI when to update

# stupid function to make it more pythony
print = (args) ->
    console.log args

class Model extends EventEmitter
    constructor: (@app_name, @app_desc) ->
        @click_count = 0 # @ denotes instance variable

    increment_click_count: () ->
        @click_count += 1
        print "counter = " + @click_count        
        @emit 'change'

    # accessor functions are a good idea when using a "Model"
    get_click_count: () ->
        @click_count # automatically returns last line in method
        # 'return @click_count' would do the exact same thing

    print_click_count: () ->
        print @click_count # no parenthese needed!

module.exports = Model # Don't forget to export!!!