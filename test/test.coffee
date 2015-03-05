assert = require "assert"

describe "Array", ->
    describe "#indexOf()", ->
        it "should return -1 when the value is not present", ->
            assert.equal -1, [1,2,3].indexOf(5)
            assert.equal -1, [1,2,3].indexOf(0)
            assert.equal -1, [1,2,3].indexOf(20)
            assert.equal -1, [1,2,3].indexOf(23)
            assert.equal -1, [1,2,3].indexOf(24)
            assert.equal -1, [1,2,3].indexOf(25)
    describe "#length", ->
        it "should return the correct length of the array", ->
            assert.equal 3, [1,2,3].length
