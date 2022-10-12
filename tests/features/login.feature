Feature: 
    As User
    I want to login 
    So that I can add new contacts

    Scenario: Login with valid credential
        Given the user has browsed to home page
        When user enters correct credentials with email "valid email" and name "valid name"
        Then user should be navigated to Contact Fox page

    Scenario: Login with invalid credential
        Given the user has browsed to home page
        When user enters incorrect credentials
        And user clicks login button
        Then user should navigated to home page 
        And error message "Invalid credentials" should be shown

    Scenario: Login with invalid email format 
        Given the user has browsed to home page
        When the user has entered invalid email without "ramgmail.com"
        Then validation error message "Please include an '@' in the email address."

    