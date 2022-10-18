Feature: Edit Contacts
    As a user
    I want to edit my existing contacts 
    So that i can change contact information

    Background:
        Given user has navigated to homepage 

    Scenario: Update specific contact from group of contacts
        Given the following contacts have been added to the contact list
            |Name    |Email              |Phone    |Contact Type|
            |Samiksha|Samiksha@gmail.com |9846000  |Personal    |
            |Binita  |Binita@gmail.com   |984600110|Personal    |
            |Anusha  |Anusha@gmail.com   |9846000  |Personal    |
        And the user selects contact which have email as "Samiksha@gmail.com"
        When the user updates contact with the following information
            |Name  |Email            |Phone    |Contact Type|
            |Sunita|Sunita@gmail.com |98460001 |Professional|
        Then the contact with email "Sunita@gmail.com" should be updated as 
            |Name  |Email            |Phone    |Contact Type|
            |Sunita|Sunita@gmail.com |98460001 |Professional|
            

    Scenario: Add single user and edits its data
        Given the following contacts have been added to the contact list
            |Name    |Email              |Phone    |Contact Type|
            |Samiksha|Samiksha@gmail.com |9846000  |Personal    |
        When the user updates contact with the following information
            |Name    |Email           |Phone     |Contact Type  |
            |Saksha  |Sashya@gmail.com|98460001  |Professional|
        Then the contact with email "Sashya@gmail.com" should be updated as
            |Name    |Email           |Phone     |Contact Type|
            |Saksha  |Sashya@gmail.com|98460001  |Professional|
 