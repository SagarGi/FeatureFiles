Feature:
    As a user
    I want to login to the application 
    So that i can access to the home page

Background: 
    Given the user has navigated to the login page

Scenario: Login with valid credential   
    When  the user enters valid "dadhir@gmail.com" and "12345678"
    Then  the home page should be displayed on the webUI


