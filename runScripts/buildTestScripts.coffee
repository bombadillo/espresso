{exec} = require "child_process"

exec "coffee --compile --output test/ test/"
exec "npm test"
