Feature:
    As a user
    I want to search contacts
    So that I can get contacts 

Background:
    Given I navigate to the login page
    When I submit Email and password
    And  Click on the "Login" button
    Then I should be logged in 
    Then Added Contact should be exists 

Scenario:Search the contacts
    When the user clicks on the Search Contact input field and type "<name>"
    Then the added contact should be appear
