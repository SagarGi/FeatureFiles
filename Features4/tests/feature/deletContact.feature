Feature:
    As user
    I want to delet added Contact
    So that I can manage unwanted contact

Background:
    Given I navigate to the login page
    When I submit Email and password
    And  click on the "Login" button
    Then I should be logged in 
    Then added Contact should be exists 

  Scenario: Delete contacts
        When  the user click "delete" botton 
        Then  the contact should be deleted
