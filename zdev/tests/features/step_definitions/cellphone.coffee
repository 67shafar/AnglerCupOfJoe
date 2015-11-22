module.exports = ->
  
  @World = require('../support/world.coffee').World

  @When /^my mouse is hovering over image key (.*)$/, (num, callback) ->
    # Write code here that turns the phrase above into concrete actions
    callback.pending()

  @Then /^the image key should have a wider border$/, (callback) ->
    # Write code here that turns the phrase above into concrete actions
    callback.pending()

  @Given /^the image key should have a darker background$/, (callback) ->
    # Write code here that turns the phrase above into concrete actions
    callback.pending()

  @Given /^a black line should be drawn to corresponding content$/,
  (callback) ->
    # Write code here that turns the phrase above into concrete actions
    callback.pending()

  @When /^my mouse is hovering over feature content (.*)$/,
  (num, callback) ->
    # Write code here that turns the phrase above into concrete actions
    callback.pending()

  @Then /^the cooresponding image key should have a wider border$/,
  (callback) ->
    # Write code here that turns the phrase above into concrete actions
    callback.pending()

  @Given /^a black line should be drawn to the image key$/, (callback) ->
    # Write code here that turns the phrase above into concrete actions
    callback.pending()

  null