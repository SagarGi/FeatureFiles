Feature:Delete Contact
    As a user
    I want to delete my contacts 
    So that i can remove unwanted contacts

    Scenario: Delete contacts
        Given the user has navigated to the contact page
        And have the following contact list
            |name    |email             |contact-type|
            |samiksha|samiksha@gmail.com|Personal    |
            |anusha  |anusha@gmail.com  |Professional|
        When the user click "delete" botton which have the following
            |name      |email             |contact-type|
            |samiksha  |samiksha@gmail.com|Personal    |
        Then the  user should not  be in contact list anymore
