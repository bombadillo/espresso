{exec} = require "child_process"
gaze = require "gaze"
fs = require "fs"

log = console.log.bind console

gaze 'src/*.coffee', (err,watcher) ->

    @on "changed", (filepath) ->
        exec "coffeescript-concat -I src/ -o src/output.coffee", ->
            exec "coffee -c src/output.coffee", ->
                source = fs.createReadStream "src/output.js"
                dest = fs.createWriteStream "lib/app.js"
                source.pipe dest

                source.on "end", ->
                    fs.unlink "src/output.js"
                    fs.unlink "src/output.coffee"
