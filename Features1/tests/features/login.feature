Feature:
    As a user
    I want to login to the application 
    So that i can access to the home page

Scenario: Login with valid credential
    Given the user has navigated to the register page
    And the user has been registered with following user information
        |name    |email         |password|confirmpassword|
        |demo    |demo@gmail.com|hello123|hello123       |
    And the home page has been displayed on the webUI
    And user has logged out 
    And the user has navigated to the login page   
    When the user login with email "demo@gmail.com" and password "hello123"
    Then  the home page should be displayed on the webUI

Scenario: Login with invalid credential
    Given the user has navigated to the login page
    When the user login with email "invalidemail@gmail.com" and password "invalidpassword" 
    Then  the "Invalid credentials." message should be pop in the login page


#this two scenario test for the pop up message in the input field
# Scenario: Login with invalid email format
#     Given the user has navigated to the login page
#     When  the user login with invalid email "invalidemail"
#     Then  the message Please include an '@' in the email address.'invalidemail' is missing an @ should be popped

# Scenario Outline: Login with invalid email format
#     Given the user has navigated to the login page
#     When the user enters email address as "<invalidemail>" and "<password>"
#     Then the error "<message>" should pop
#     Examples:
#         |invalidemail|password| message                                  |
#         |abc.com     |abc     |@ is missing                              |
#         |abc@.com    |hello   |. is used at a wrong position in a .com   |
#         |abc@gmail   |hyyy    |                                          |