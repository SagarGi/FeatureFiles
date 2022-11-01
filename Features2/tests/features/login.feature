Feature:login feature
    As a user
    I want to login to the Contact Fox 
    So that I can have acess to the contact fox contacts


    Scenario Outline: Login to the ContactFox with valid credentials
        Given a user has navigated to the login dashboard
        When  the user enters the credentials with email "<email>" and Password "<password>"
        Then the user should  be naviaged to the homepage
        Examples:
            |email          |password |message  |
            |demo1@gmail.com|something|sucessful|

    Scenario Outline:Login to the ContactFox with invalid credentials
        Given a user has navigated to the login dashboard
        When  the user enters the credentials with email "<email>" and Password "<password>" 
        Then the user should be given invalid credentials "<message>"
        Examples:
            |email                  |password |message             |
            |abcdefghij345@gmail.com|236625364| Invalid credentials.|
        
# It is commited because no stepdefinations created and kept because it may be required later

    # Scenario Outline:when you input invalid email
    #     Given a user has navigated to the login dashboard
    #     When the user enters with a "<email>"
    #     Then the user should be given a "<message>"
    #     Examples:
    #         | email                   | message                       |
    #         | abchefg98gmailcom       |  Please enter an email address|
    #         | rits98.com              | Please enter an email address |
    #         | rira@gmail              |                               |
    #         | risahgdgajda36gmail.com | Please enter an email address |

