EventEmitter = require('events').EventEmitter # used to tell UI when to update

# stupid function to make it more pythony
print = (args) ->
    console.log args

class Model extends EventEmitter
    constructor: (@app_name, @app_desc) ->
        @click_count = 0 # @ denotes instance variable

    update_click_count: () ->
        @click_count += 1

    print_click_count: () ->
        print @click_count # no parenthese needed!

module.exports = Model # Don't forget to export!!!