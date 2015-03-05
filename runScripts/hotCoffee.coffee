{exec} = require "child_process"
gaze = require "gaze"
fs = require "fs"

log = console.log.bind console

gaze 'src/**/*.coffee', (err,watcher) ->

    @on "changed", (filepath) ->
      exec "coffee -c src/", ->
        log "Coffee brewed"
        exec "npm run browserify", ->
          log "Magic performed"
