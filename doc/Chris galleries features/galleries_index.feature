Feature: See available Galleries
  In order to see available photos
  As a user
  I want to click on Galleries link on the navbar

  Scenario: visiting galleries page
    Given I see navbar link to galleries
    When I click galleries link
    Then I should see available galleries
    
