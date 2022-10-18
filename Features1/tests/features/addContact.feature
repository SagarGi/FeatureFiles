Feature: Add Contact
    As a user 
    I want to add contacts
    So that i can save my contacts

    Background: 
        Given the user have navigated to the homepage  

        Scenario: Added contact with correct inputs
            When the user enters following contact information
                |name|email        |phone       |contactType |
                |abc |abc@gmail.com|9800000000  |Personal    |
            Then following contacts should be displayed
                |name|email        |phone       |contactType |
                |abc |abc@gmail.com|9800000000  |Personal    |   

        Scenario Outline: Added contact with invalid email pattern
            When the user enters following inputs
                |name  |email  |phone  |contactType  |
                |<name>|<email>|<phone>|<contactType>|      
            Then error message "<message>" should pop up on the webUI
            Examples:
                |name    |email     |phone       |contactType    |message                                |
                |abc     |abc.com   |98000000    |Personal       |@ is missing                           |
                |        |hello@.com|9800000000  |Professional   |. is used at a wrong position in a .com|
                |aaaa    |hell@.com |            |Professinal    |. is used at a wrong position in a .com|
        