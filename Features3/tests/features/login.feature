Feature: 
    As User
    I want to login 
    So that I can add new contacts

    Background:
        Given the user has navigated to login page

    Scenario: Login with valid credential
        When user login with following credentials
            |   email     |password|
            |abc@gmail.com|abc12345|
        Then user should be navigated to Contact Fox page

    Scenario: Login with invalid credential
        When user login with following credentials
            |   email     |password|
            |abc@gmail.com|abc     |
        Then error message "Invalid credentials." should be shown

    Scenario: Login with invalid email format 
        When user login with following credentials
            |   email    |password|
            |abcgmail.com|abc12345|
        Then validation error message "Please include an '@' in the email address."

# Login with invalid credential using example scenario
# Suppose valid email is "email" and password is "password"

     Scenario Outline: Login with invalid credential
        When user enters incorrect credentials with email "<email>" and password "<password>"
        And user clicks login button
        Then error message "Invalid credentials" should be shown
        Examples:
        |email | password|
        |abc@gmail.com|abc|
        |cde@gmail.com|cde|
        |efg@gmail.com|efg|

    Scenario: Login without filling in all input fields 
        When user enters input in only one of the input fields 
        Then informational message "Please fill in all fields." should pop up