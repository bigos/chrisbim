Feature: Submission of contact messages
  In order to send contact messages 
  As an user
  I want to fill in contact form and submit message

  Scenario: Contact form
    Given I visit contact page
    And fill in valid data
    When I click Submit
    Then the message should be saved in the database
 
  Scenario: Validation of supplied data
    When I provide invalid data
    Then I should get validation errors
