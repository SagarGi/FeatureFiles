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

        
        Scenario: Register with already existing user 
            Given the user has been register with following contact information
                |name    |email        |password|confirmpassword|
                |demo|   demo@gmail.com|hello123|hello123       |
            And the home page has been displayed on the webUI
            And user has logged out 
            And the user has navigated to the register page 
            When the user enters following contact information
                |name    |email         |password|confirmpassword|
                |demo    |demo@gmail.com|hello123|hello123       |               
            Then error message "User already exists. Please choose another email address." should pop up on the webUI

        #this two scenario test for the pop up message in the input field
        
        # Scenario Outline: Register with invalid email format
        #     When the user enters following contact information
        #         |name    |email         |password    |confirm password|
        #         |<name>  |<invalidemail>|<password>  |<confirmpassword>|
        #     Then error message "<message>" should pop up on the webUI
        #     Examples:
        #         |name|invalidemail |password|confirmpassword|message                                |
        #         |abc |abc.com      |hello123|hello123       |missing an @                           |
        #         |abc |abc@.com     |hello123|hello123       |. is used at a wrong position in a .com|
        #         |abc |abc@gmail    |hello123|hello123       |                                       |

        # Scenario Outline: Register with  password length less than 6 characters
        #     When the user enters following contact information
        #         |name|email        |invalidpassword|confirmpassword|message                                |
        #         |abc |abc@gmail.com|hello          |hello          |please length this text to 6 character |
        #     Then error message "please length this text to 6 character" should pop up on the webUI
            
        Scenario Outline: Register with unmatched password
            When the user enters following contact information
                |name|email         |password  |confirmpassword|message             |
                |abc |abc@gmail.com |hello123  |hello11        |password donot match|
            Then error message "Passwords do not match." should pop up on the webUI