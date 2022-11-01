Feature: Add Contact
    As a user 
    I want to add contacts
    So that i can save my contacts

    Background: 
        Given the user has navigated to the login page
        And the user has navigated to the register page
        And the user enters following user information
            |name|email         |password|confirmpassword|
            |demo|demo@gmail.com|hello123|hello123       |
        And the home page has been displayed on the webUI    

        Scenario: Added contact with correct inputs
            When the user enters following contact information
                |name|email        |phone       |contactType |
                |abc |abc@gmail.com|9800000000  |professional|
            Then following contacts should be displayed
                |name|email        |phone       |contactType |
                |abc |abc@gmail.com|9800000000  |professional| 

        #This scenario contains error message in the input field          

        # Scenario Outline: Added contact with invalid email pattern
        #     When the user enters following inputs
        #         |name  |email  |phone  |contactType  |
        #         |<name>|<email>|<phone>|<contactType>|      
        #     Then error message "<message>" should pop up on the webUI
        #     Examples:
        #         |name    |email     |phone       |contactType    |message                                |
        #         |abc     |abc.com   |98000000    |Personal       |@ is missing                           |
        #         |        |hello@.com|9800000000  |Professional   |. is used at a wrong position in a .com|
        #         |aaaa    |hell@.com |            |Professinal    |. is used at a wrong position in a .com|
        