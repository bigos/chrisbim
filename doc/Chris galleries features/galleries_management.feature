Feature: Adding and removing Galleries
  In order manage available photos
  As a user
  I want to add and remove galleries.

  Scenario: Admin gallery submission
    Given I am logged in as admin user
    And I clicked add a gallery link
    And I have filled in Gallery title
    And selected the thumbnail
    When I press Submit button
    Then the gallery should be added to the list of galleries

  Scenario: Admin gallery submission - no title
    Given I am logged in as admin user
    And gallery title is blank
    When I press submit button 
    Then I should get an error

  Scenario: Admin gallery submission - no thumbnail
    Given I am logged in as admin user
    And thumbnail info is blank
    When I press submit button 
    Then the gallery should be added to the list of galleries
    And I should get an warning
    And info about adding or editing thumbnail

  Scenario: Regular user adding a gallery
    Given that I am not logged in as admin
    And I am on galleries page
    When page contains add gallery link
    Then should get security error

  Scenario Regular user trying to hack
    Given that I am not logged in as admin
    And enter url for adding  a gallery
    When I press enter
    Then should get security error
    
