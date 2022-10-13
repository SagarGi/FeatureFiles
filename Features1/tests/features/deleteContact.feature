Feature:Delete Contact
    As a user
    I want to delete my contacts 
    So that i can remove unwanted contacts

    Scenario: Delete contacts
        Given the user has navigated to the contact page
        When  the user click "delete" botton
        Then  the contact should be deleted
