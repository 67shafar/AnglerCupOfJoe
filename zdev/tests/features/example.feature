Feature: Example feature
  As a user of cucumber.js
  Want to have documentation on cucumber
  So that I can concentrate on building awesome applications

  Scenario: Reading documentation
    Given I am on the Cucumber.js GitHub repository
    When I go to the README file 7
    Then I should see "Usage" as the page title

  Scenario: Reading documentation again
    Given I am on the Cucumber.js GitHub repository
    When I go to the README file 8
    Then I should see "Use" as the page title
    And I should see this thing too