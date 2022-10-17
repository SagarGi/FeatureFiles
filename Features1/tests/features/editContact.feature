Feature: Edit Contacts
    As a user
    I want to edit my existing contacts 
    So that i can make some update and display it in my contact list

    Background:
        Given user has navigated to homepage 
        And the following contacts have been added to the contact list
            |Name    |Email              |Phone    |Contact Type|
            |Samiksha|Samiksha@gmail.com |9846000  |Personal    |
            |Binita  |Binita@gmail.com   |984600110|Personal    |
            |Anusha  |Anusha@gmail.com   |9846000  |Personal    |
        And the user selects contact which have email as "Samiksha@gmail.com"

    Scenario: Update full contact information
        When the user updates contact with email "Samiksha@gmail.com" with the following data:
            |Name  |Email            |Phone    |Contact Type|
            |Sunita|Sunita@gmail.com |98460001 |Professional|
        Then the contact with email "Sunita@gmail.com" should be updated as 
            |Name  |Email            |Phone    |Contact Type|
            |Sunita|Sunita@gmail.com |98460001 |Professional|
            

    Scenario: Edits email only
        When the user updates contact with email "Samiksha@gmail.com" with the following data:
            |Name    |Email           |Phone    |Contact Type|
            |Samiksha|Sashya@gmail.com|9846000  |Personal    |
        Then the contact with email "Sashya@gmail.com" should be updated as
            |Name    |Email           |Phone    |Contact Type|
            |Samiksha|Sashya@gmail.com|9846000  |Personal    |

        
    Scenario: Edit phone only
        When the user updates contact with email "Samiksha@gmail.com" with the following data:
            |Name    |Email           |Phone     |Contact Type|
            |Samiksha|Sashya@gmail.com|9846000111|Personal    |
        Then the phone number of the email "Sashya@gmail.com" should be updated as
            |Phone     |
            |9846000111|

    Scenario: Edit contact type only
        When the user updates contact type with email "Samiksha@gmail.com" with the following data:
            |Name    |Email           |Phone     |Contact Type|
            |Samiksha|Sashya@gmail.com|9846000111|Personal    |
        Then the contact type of the email "Sashya@gmail.com" should be updated as
            |Contact Type|
            |Professional|

    Scenario Outline: Edit email with invalid pattern
        When the user edits email as "<email>" 
        Then the error message "<message>" should be poped 
        Example:
            |email       |message                               |
            |abc123@.com |.is used as a wrong position in '.com'|
            |abcgmail.com|@ is missing                          |

    # Scenario: Edit contact with empty fields
    #         When the user edit contact with empty fields
    #         Then the contact with empty fields should not be updated   



        

        
    



                                            