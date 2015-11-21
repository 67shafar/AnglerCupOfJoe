chai = require('chai')
chaiAsPromised = require('chai-as-promised')
chai.use(chaiAsPromised)
expect = chai.expect

Feature 'Math', ->
  Scenario 'Incrementing numbers', ->
    Given 'A number that starts at 0', ->
      @n = 0
    When 'the number is incremented', ->
      @n++
    Then 'it becomes 1', ->
      expect(@n).to.equal(1)