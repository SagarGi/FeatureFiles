Feature:Search contact
    As a user
    I want to search the contact from the contact list
    So I can easily get the required contact from the list
    
    
    Background:
    Given the user has navigated to the homepage
     And the user has added following contacts
        | name     | Email              | Phone      | Contact Type |
        | abcde    | abcde@gmail.com    | 00000000   | Professional |
        | xyz      | xyz@gmail.com      | 111111111  | Personal     |
        | example  |example@gmail.com   | 22222222222| Professional |
        | example2 | example2@gmail.com | 333333333  | Personal     |
        | abcd1    |sabhdb@gmail.com    | 9876666    | Personal     |
        |  cvbn    |cvbn@gmail.com      | 090099090  | Professional |
        | mnbv     | mnvb@gmail.com     | 098876677  | Professional |
 
     Scenario:Search contact by email
        When the user enters "abcde@gmail.com" in the search icon
        Then  it shows all the contacts started from the entered "abcde@gmail.com"

    Scenario:Search contact by number
        When the user enters "00000000" in the search icon
        Then  it shows all the contacts started from the entered "00000000"
      
    Scenario:Search with name
        When the user enters "mnbv" in the search icon
        Then  it shows all the contacts started from the entered "mnbv"