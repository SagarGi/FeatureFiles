Feature:Delete Contact
    As a user
    I want to delete contact
    So I can unwanted contacts from the contacts saved

    Scenario:To delete the contacts from the saved contacts
        Given the user has added following contacts
        | name | Email | Phone | Contact Type |
        | abcde | abcde@gmail.com | 00000000 | Professional |
        | xyz | xyz@gmail.com | 111111111 | Personal |
        | example |example@gmail.com | 22222222222| Professional |
        | example2 | example2@gmail.com |3333333333|personal|
        When the user clicks the  detete  button 
        Then the deleted contact will be removed from the contact list