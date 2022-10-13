Feature:
    As a user
    I want to edit contact
    So that I can correct mistakes 

Background:
    Given I navigate to the login page
    When I submit Email and password
    And  click on the "Login" button
    Then I should be logged in 
    Then added Contact should be exists 

Scenario: Edit the contacts
    When I make the following changes:
    | Name | Email address | Phone | Contact Type |
    | ""   | 123           | ""    | Personal     |
    And click on the Update Contact button
    Then all the changes should match the task details
