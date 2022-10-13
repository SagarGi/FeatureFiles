Feature: Delete Contact
     As a user
     I want to delete contact
     So that I can free up the space
    
    Scenario: User wants to delete contact
        Given user has navigated to contact lists in the homepage
        When user clicks "delete" button
        Then user should not see the deleted contact