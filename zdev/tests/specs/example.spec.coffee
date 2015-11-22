@Helpers = require('./helpers/helpers.coffee').Helpers
expect = @Helpers.expect


describe 'Math', ->
  describe 'Incrementing numbers', ->

    it 'should add 1 to 0', ->
      @n = 0
      @n++
      expect(@n).to.equal 1