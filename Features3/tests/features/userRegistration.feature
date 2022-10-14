Feature: Register new user account
    As a user 
    I want to register new account
    So that I can navigate to Contact Fox page

    Background:
        Given User is navigated to register page

    Scenario: Register with all valid credentials
        When User registers new account entering name as "name", email as "valid email", password as "password", confirm password as "confirm-password"
        Then new user should navigate to Contact Fox page

# register 1 account or more than 1 ???
    Scenario Outline: Register with all valid credentials
        When User registers new account entering name as "<name>", email as "<email>", password as "<password>", confirm password as "<confirm-password>"
        Then new user should navigate to Contact Fox page
        Examples:
        |name |    email    |password|confirm-password|
        |abc  |abc@gmail.com|abc12345|abc12345        |
        |xyz  |xyz@gmail.com|xyz12345|xyz12345        |

    Scenario: Register with invalid email format
        When User registers new account with invalid email format "abcgmail.com"
        Then validation error message as "Please include an '@' in the email address." should pop up 

    Scenario: Register with different password and confirm password
        When User register new account with password as "password" and confirm password as "confirm-password"
        Then pop up should appear showing error message as "Passwords do not match" 

    Scenario: Register with password less than six characters
        When User registers new account entering name as "<name>", email as "<email>", password as "<password>", confirm password as "<confirm-password>"
        Then validation error message as "Please lengthen this text to 6 characters or more." should pop up
        Examples:
            |    email    |
            |abc@gmail.com|
            |abc@gmail.com|
            |abc@gmail.com|
            |abc@gmail.com|
            |abc@gmail.com|

    Scenario: Register with email same as of already created account
        Given account is already created with name "abc", email "abc@gmail.com", password "abc12345", confirm password "abc12345"
        When User registers new account entering name as "xyz", email as "abc@gmail.com", password as "xyz12345", confirm password as "xyz12345"
        Then pop up should appear showing informational message as "User already exists. Please choose another email address." 

    Scenario Outline: Register with empty input fields
        When User registers with empty input field for name as "<name>", email as "<email>", password as "<password>", confirm password as "<confirm-password>" 
        Then pop up should appear showing error message as "Please enter all fields" 
        Examples:
        |name|    email    |password|confirm-password|
        |    |abc@gmail.com|abc12345|  abc12345      |
        |abc |             |abc12345|  abc12345      |
        |abc |abc@gmail.com|        |  abc12345      |
        |abc |abc@gmail.com|abc12345|                |
        |abc |             |        |                |
        |    |abc@gmail.com|        |                |
        |    |             |abc12345|                |
        |    |             |        |  abc12345      |
        |    |             |        |                |
    