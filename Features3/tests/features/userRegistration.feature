Feature: Register new user account
    As a user 
    I want to register new account
    So that I can use Contact Fox App

    Background:
        Given User has navigated to register page

    Scenario: Register with all valid credentials
        When User registers new account entering following credentials
            |name|email|password|confirm-password|
            |abc|abc@gmail.com|abc12345|abc12345|
        Then new user with email "abc@gmail.com" should navigate to Contact Fox Home page

    Scenario Outline: Register with all valid credentials
        When User registers new account entering name as "<name>", email as "<email>", password as "<password>", confirm password as "<confirm-password>"
        Then new user with email "<email>" should navigate to Contact Fox Home page
        Examples:
        |name|email|password|confirm-password|
        |abc|abc@gmail.com|abc12345|abc12345|
        |xyz|xyz@gmail.com|xyz12345|xyz12345|

    Scenario: Register with invalid email format
        When User registers new account with invalid email format "abcgmail.com"
        Then validation error message as "Please include an '@' in the email address." should pop up on email input field

    Scenario: Register with different password and confirm password
        When User register new account with password as "password" and confirm password as "confirm-password"
        Then pop up should appear showing error message as "Passwords do not match" on the webUI

    Scenario Outline: Register with password less than six characters
        When User registers new account entering name as "<name>", email as "<email>", password as "<password>", confirm password as "<confirm-password>"
        Then validation error message as "Please lengthen this text to 6 characters or more." should pop up
        Examples:
            |name|email|password|confirm-password|
            |abc|abc@gmail.com|a|a|
            |abc|abc@gmail.com|ab|ab|
            |abc|abc@gmail.com|abc|abc|
            |abc|abc@gmail.com|abc1|abc1|
            |abc|abc@gmail.com|abc12|abc12|

    Scenario: Register with email same as of already created account
        Given account has been created with following credentials
            |name|email|password|confirm-password|
            |abc|abc@gmail.com|abc12345|abc12345|
        When User registers new account entering name as "xyz", email as "abc@gmail.com", password as "xyz12345", confirm password as "xyz12345"
        Then pop up should appear showing informational message as "User already exists. Please choose another email address." 

    Scenario: Register with empty input fields
        When User registers with following data
            |name|email|password|confirm-password|
            ||abc@gmail.com|abc12345|abc12345|
            |abc||abc12345|abc12345|
            |abc|abc@gmail.com||abc12345|
            |abc|abc@gmail.com|abc12345||
            ||abc@gmail.com|abc12345|abc12345|
            |||abc12345|abc12345|
            |abc|||abc12345|
            |abc|abc@gmail.com|||
            ||abc@gmail.com|abc12345||
            |abc||||
            ||abc@gmail.com|||
            |||abc12345||
            ||||abc12345|
            |||||
        Then pop up should appear showing error message as "Please enter all fields" 