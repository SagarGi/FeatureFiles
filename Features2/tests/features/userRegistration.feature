Feature:User registration
    As a user
    I want to register my account 
    So I can have valid credentials to login to use the Contact Fox
     
    Background:The user is in Registration page 
        Given a user has navigated to the login dashboard
        And the user has clicked Register button
        And the user has been navigated to the Registration page


        Scenario:To register account with valid email and  same password and confirm password
            When the user enters the name with "Rita" and email with "rita@gmail.com" and password with "password" and confirm password with "password"
            Then the user will be registered and navigated to the homepage

        Scenario:Register using already existing user information
            Given the user enters the name with "Rita" and email with "rita@gmail.com" and password with "password" and confirm password with "password"
            And the user will be registered and navigated to the homepage
            And the user has clicked logout button 
            And the user has clicked Register button
            And the user has been navigated to the Registration page
            When the user enters the name with "Rita" and email with "rita@gmail.com" and password with "password" and confirm password with "password"
            Then the user will hovered with the message "User already exits. Please choose another email address."

        Scenario Outline:when you input invalid email while registration
            When the user enters with a "<email>"
            Then the user will be given a "<message>"
            Examples:
                | email                   | message|
                | abchefg98gmailcom       | Please enter an email address |
                | rits98.com              | Please enter an email address |
                | rira@gmail              |                               |
                | risahgdgajda36gmail.com | Please enter an email address |
            
        Scenario:when you give different  password and confirm password
            When the user enters the name with "Rita" and email with "rita@gmail.com" and password with "password" and confirm password with "confirmpassword"
            Then the user will hovered with the message "Passwords do not match"


    
        

