Feature: New User Resistration
    As a user
    I want to Register to the contact Fox
    So that i can use the contact fox app

    Background:
        Given the user has navigated to the register page

        Scenario: Register with valid Credentials
            When the user enters following inputs
                |name    |email             |password|confirm password|
                |Samiksha|samiksha@gmail.com|hello123|hello123        |
            Then  the home page should be displayed on the webUI


        Scenario Outline: Register with invalid email format
            When the user enters following inputs
                |name    |email        |password    |confirm password|
                |<name>  |<invalidemail|<password>  |<confirmpassword>|
            Then the error message "<message>" should pop
            Examples:
                |name|invalidemail |password|confirmpassword|message                                |
                |abc |abc.com      |hello123|hello123       |missing an @                           |
                |abc |abc@.com     |hello123|hello123       |. is used at a wrong position in a .com|
                |abc |abc@gmail    |hello123|hello123       |                                       |

        Scenario Outline: Register with  password length less than 6 characters
            When the user enters following inputs
                |name  |email        |password        |confirm password |
                |<name>|<validemail|<invalidpassword> |<confirmpassword>|
            Then the error "<message>" should pop
            Examples:
                |name|validemail   |invalidpassword|confirmpassword|message                                |
                |abc |abc@gmail.com|hello          |hello          |please length this text to 6 character |

        Scenario Outline: Register with unmatched password
            When the user enters following inputs
                |name  |email        |password   |confirm password |
                |<name>|<validemail  |<password> |<confirmpassword>|
            Then the error "<message>" should pop
            Examples:
                |name|validemail    |password  |confirmpassword|message             |
                |abc |abc@gmail.com |hello123  |hello11        |password donot match|