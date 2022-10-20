Feature: New User Resistration
    As a user
    I want to Register to the contact Fox
    So that i can use the contact fox app

    Background:
        Given the user has navigated to the register page

        Scenario: Register with valid Credentials
            When the user enters following contact information
                |name    |email             |password|confirmpassword|
                |demo|demo@gmail.com|hello123|hello123        |
            Then  the home page should be displayed on the webUI


            #assuming that this email "demo@gmail.com" has been register
        
        Scenario: Register with already existing user 
            When the user enters following contact information
                |name    |email             |password|confirmpassword|
                |demo|demo@gmail.com|hello123|hello123        |  
            Then error message "User already exists. Please choose another email address." should pop up on the webUI


        Scenario Outline: Register with invalid email format
            When the user enters following contact information
                |name    |email         |password    |confirm password|
                |<name>  |<invalidemail>|<password>  |<confirmpassword>|
            Then error message "<message>" should pop up on the webUI
            Examples:
                |name|invalidemail |password|confirmpassword|message                                |
                |abc |abc.com      |hello123|hello123       |missing an @                           |
                |abc |abc@.com     |hello123|hello123       |. is used at a wrong position in a .com|
                |abc |abc@gmail    |hello123|hello123       |                                       |

        Scenario Outline: Register with  password length less than 6 characters
            When the user enters following contact information
                |name|email        |invalidpassword|confirmpassword|message                                |
                |abc |abc@gmail.com|hello          |hello          |please length this text to 6 character |
            Then error message "please length this text to 6 character" should pop up on the webUI
            
        Scenario Outline: Register with unmatched password
            When the user enters following contact information
                |name|email         |password  |confirmpassword|message             |
                |abc |abc@gmail.com |hello123  |hello11        |password donot match|
            Then error message "password donot match" should pop up on the webUI