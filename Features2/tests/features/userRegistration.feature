Feature:User registration
    As a user
    I want to register my account 
    so as  I can have valid credentials to login to use the Contact Fox
     
    Background:The user is in Registration page 
        Given a user has navigated to the loginpage
        And the user has clicked Register button
        And the user has been navigated to the  Registration page


        Scenario:To register account with valid email and  same password and confirm password
            When the user enters the name with "name" and email with "valid email" and password with "password" and confirm password with "password"
            Then the user will be registered and navigated to the homepage

        Scenario Outline:when you input invalid email while registration
            When the user enters with a "<email>"
            Then the user will thrown a "<message>"
            Examples:
            | email            | message|
            | abchefg98gmailcom |  Please enter an email address|
            | rits98.com       | Please enter an email address|
            | rira@gmail       |                              |
            | risahgdgajda36gmail.com | Please enter an email address|
        
        Scenario:when you give different  password and confirm password
            When the user enters different Password with "<password>" and Confirm Password  with "<confirm password>"
            Then the user will hovered with the message "Passwords do not match"

        

