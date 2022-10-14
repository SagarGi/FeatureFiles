Feature:Delete Contact
    As a user
    I want to delete contact
    So I can unwanted contacts from the contacts saved

     Scenario Outline:To delete the contacts from the saved contacts
        Given the user has added following contacts
        | name | Email | Phone | Contact Type |
        | <name> |<Email>| <Phone>| <Contact  Type>|
        When the user deletes the contact name with "<email>"
        Then the contact with  name with "<email>"  will be deleted
        Examples:
        | name | Email | Phone | Contact Type |
        | example |example@gmail.com | 22222222222| Professional |
        | example2 | example2@gmail.com |3333333333|personal|

    Scenario Outline:To delete the specific contacts from the saved contacts
        Given the user has added following contacts
        | name | Email | Phone | Contact Type |
        | example |example@gmail.com | 22222222222| Professional |
        | example2 | example2@gmail.com |3333333333|personal|
        When the user deletes the contact name with "<email>"
        Then the contact with  name "<email>" will be deleted
        But the coontact with email "example2@gmail.com" will be displayed
        Examples:
        |email|
        |example@gmail.com|                                       