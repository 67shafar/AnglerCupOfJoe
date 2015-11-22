

module.exports  = ->

  @World = require('../support/world.coffee').World

  @Given /^I am on the Cucumber\.js GitHub repository$/, (callback) ->
    @browser.driver.get('http://google.com').then ->
      callback()

  @When /^I go to the README file (\d+)$/, (arg1, callback) ->
    callback()

  @Then /^I should see "([^"]*)" as the page title$/, (arg1, callback) ->
    # Write code here that turns the phrase above into concrete actions
    callback.pending()

  @Then /^I should see this thing too$/, (callback) ->
    # Write code here that turns the phrase above into concrete actions
    callback.pending()

  null