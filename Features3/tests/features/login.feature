Feature: 
    As User
    I want to login 
    So that I can add new contacts

    Scenario: Login with valid credential
        Given the user has browsed to login page
        When user enters correct credentials with email "abc@gmail.com" and password "abc12345"
        Then user should be navigated to Contact Fox page

    Scenario: Login with invalid credential
        Given the user has browsed to login page
        When user enters incorrect credentials with email "abc@gmail.com" and password "abc"
        And user clicks login button
        Then error message "Invalid credentials" should be shown

    Scenario: Login with invalid email format 
        Given the user has browsed to login page
        When the user has entered invalid email without "<email>"
        Then validation error message "Please include an '@' in the email address."
        Examples:
        |email|
        |abcgmail.com|
        |abcgmailcom|


# Login with invalid credential using example scenario
# Suppose valid email is "email" and password is "password"

     Scenario Outline: Login with invalid credential
        Given the user has browsed to login page
        When user enters incorrect credentials with email "<email>" and password "<password>"
        And user clicks login button
        Then error message "Invalid credentials" should be shown
        Examples:
        |email | password|
        |abc@gmail.com|abc|
        |cde@gmail.com|cde|
        |efg@gmail.com|efg|

    Scenario: Login without filling in all input fields 
        Given user has browsed to login page
        When user enters input in only one of the input fields 
        Then informational message "Please fill in all fields." should pop up