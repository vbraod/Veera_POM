@smoke @regression
Feature: Google Search for Ducks
  Scenario: Keyword Search in Google for Ducks
    Given User is in Google Search page
    When User enter keyword Ducks in search edit box
    Then Google provide all the links for Ducks
    And Capture all the links
