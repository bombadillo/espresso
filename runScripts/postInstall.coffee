fs = require "fs"
util = require "util"

directoriesToBeCreated = ["_vendor", "lib"]

for dir in directoriesToBeCreated
    if !fs.existsSync dir
        fs.mkdirSync(dir);


vendorFilesToBeMoved = {}

for vendor, dest of vendorFilesToBeMoved
    source = fs.createReadStream vendor
    dest = fs.createWriteStream dest
    source.pipe dest

process.exit
