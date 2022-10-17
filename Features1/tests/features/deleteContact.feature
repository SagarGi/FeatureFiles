Feature:Delete Contact
    As a user
    I want to delete my contacts 
    So that i can remove unwanted contacts

    Background:
        Given the user has navigated to the contact page

    Scenario: Delete specific user from contact list
        Given the following contacts have been added to the contact list
            |Name    |Email              |Phone    |Contact Type|
            |Samiksha|Samiksha@gmail.com |9846000  |Personal    |
            |Binita  |Binita@gmail.com   |984600110|Personal    |
            |Anusha  |Anusha@gmail.com   |9846000  |Personal    |
        When the user deletes following contact with email
            |Email             |
            |Samiksha@gmail.com|
        Then the user with email "samiksha@gmail.com" should not be in contact list anymore
        But the user with following email should be in the contact list
            |Email           |
            |Binita@gmail.com|
            |Anusha@gmail.com|

    Scenario: Create and delete user from contact list
        Given the following user has been added to the contact list
            |Name    |Email             |Phone  |Contact Type|
            |Amiksha |Aamiksha@gmail.com |9846000|Personal    |
        When the user deletes following contact with email
            |Email             |
            |Aamiksha@gmail.com|
        Then the user with email "Aamiksha@gmail.com" should not be in contact list anymore
    
