Feature:
    As a user
    I want to login to the Contact Fox
    So that I can access to the home page

Background: 
    Given the user has navigated to the login page

Scenario: Login with valid credentials   
    When the user logins with following valid credentials
        | email            | password  |
        | dadhir@gmail.com | 12345678  |
    Then the home page should be displayed on the webUI    

Scenario Outline: Login with invalid email format
    When the user enters email address as "<invalid email>" and "<password>"
    Then the error message "<message>" should be popup
    Examples:
        | invalid email   | password | message                                  |
        | dadhirgamil.com | 12345678 | @ is missing                             |
        | dadhir@.com     | 12345678 | . is used at a wrong position in a .com  |
        
Scenario Outline:Login with wrong password and wrong email address
    When the user enters wrong password "<password>" and wrong email address "<email address>" 
    Then the error message "<message>" should be popup
    Examples:
        | email address    | password | message            |
        | dadhi@gmail.com  | 12345678 |Invalid Credentials |
        | dadhir@gmail.com | 1234     |Invalid Credentials |