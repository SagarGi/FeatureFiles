Feature:
    As a User
    I want to add my credentials
    So that I can access the contact .

    Scenario: Login with  valid credentials
        Given the User has navigated to the Homepage
        When Users add valid email "valid email" and password "valid password"
        Then users should access the  ContactFox Page

    Scenario:Login with invalid emails format
        Given the user has navigated to the Homepage
        When  Users add invalid email "invalid email"  
        Then Message with the wrong email appear

    Scenario:Login with invalid password format
        Given the user has navigated to the Homepage
        When  Users add invalid password "invalid password"  
        Then Message with the wrong password appear
    
    |

        