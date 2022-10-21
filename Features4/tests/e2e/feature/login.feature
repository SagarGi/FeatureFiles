Feature:
    As a user
    I want to login to the application 
    So that i can access to the home page

Background: 
    Given the user has navigated to the login page
    And the user has navigated to the register page
    And the user has been register with the following credentials
        |name   | email               | password   | confirmpassword  |
        |Dexya  | dexyap@gmail.com    | 123456789  | 123456789        |
    And the user logged out from the home page
    And the user has navigated to the login page

Scenario: Login with valid credential   
    When  the user enters email address as "dexyap@gmail.com" and password as "123456789"
    Then  the home page should be displayed on the webUI

#.......this Scenario test for the pop message in the input field ........

# Scenario Outline: Login with invalid email format
#     When the user enters email address as "<invalid email>" and password as "<password>"
#     Then the error message "<message>" should be popup
#     Examples:
#         | invalid email   | password | message                                  |
#         | dadhirgamil.com | 12345678 | @ is missing                             |
#         | dadhir@.com     | 12345678 | . is used at a wrong position in a .com  |
        
Scenario Outline:Login with wrong password and wrong email address
    When the user enters email address as "<email address>" and password as "<password>"
    Then the error message "<message>" should be popup
    Examples:
        | email address    | password | message             |
        | dadhi@gmail.com  | 12345678 |Invalid credentials. |
        | dadhir@gmail.com | 1234     |Invalid credentials. |

