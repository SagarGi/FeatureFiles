Feature:
    As a user
    I want to login to the Contact Fox
    So that I can access to the home page

Background: 
    Given the user has navigated to the login page

Scenario: Login with valid credentials   
    When the user logins with following valid credentials
        | email                   | password   |
        | dikshyapaudel@gmail.com | hello222   |
    Then the home page should be displayed on the webUI    

Scenario Outline: Login with invalid email format
    When the user enters email address as "<invalid email>" and "<password>"
    Then the error message "<message>" should be popup
    Examples:
        | invalid email | password     | message                                  |
        | abc.com       | abc547746    | @ is missing                             |
        | abc@.com      | hello56477   | . is used at a wrong position in a .com  |
Scenario Outline:Login with wrong password and wrong email address
        When the user enters wrong password "<password>" and wrong email address "<email address>" 
        Then the error message "<message>" should be popup
    Examples:
        | password     | message             | email address |
        | abc          | invalid credentails | deekosh@gmail.c |
