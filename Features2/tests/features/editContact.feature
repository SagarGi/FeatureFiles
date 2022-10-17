Feature:Edit Contact
    As a user
    I want to edit the saved contact sometimes
    so that I can update the contacts when some changes are required
     Background:
     Given the user has navigated to the homepage
     And  the user has added following contacts
        | name     | Email              | Phone      | Contact Type |
        | abcde    | abcde@gmail.com    | 00000000   | Professional |
        | xyz      | xyz@gmail.com      | 111111111  | Personal     |
        | example  | example@gmail.com  | 22222222222| Professional |
        | example2 | example2@gmail.com | 333333333  | Personal     |
        | abcd1    | sabhdb@gmail.com   | 9876666    | Personal     |
        | cvbn     | cvbn@gmail.com     | 090099090  | Professional |
        | mnbv     | mnvb@gmail.com     | 098876677  | Professional |
     #scenario created  
 
    Scenario:Edit the saved contact
     When the  user clicks the Edit button of contact with name "abcde"
     And  the user  edit contact dashboard opens with info of contact "abcde"
     And  the user changes the required info of email by "edited@gmail.com"
     And  the user clicks the update contact button
     Then the  contact details will be edited of the contact "abcde" 
    