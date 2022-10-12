Feature:login feature
    As a user
    I want to login to the Contact Fox 
    So that I can have acess to the contact fox contacts


    Scenario: Login to the ContactFox with Valid credentials
        Given a user  has navigated to the login dashboard
        When  the user enters the valid credentials with email "valid email" and Password "valid Password"
        Then the user will be naviaged to the homepage

    Scenario:Login to the ContactFox with Invalid credentials
        Given a user  has navigated to the login dashboard
        When  the user enters the invalid credentials with email "invalid email" and Password "invalid Password" 
        Then the user will be thrown invalid credentials message


    Scenario Outline:when you input invalid email
        Given a user has navigated to the login dashboard
        When the user enters with a "<email>"
        Then the user will thrown a "<message>"

        Examples:
        | email            | message|
        | salipa98gmailcom | invalid email address|
        | rits98.com       | Please enter Email address|

