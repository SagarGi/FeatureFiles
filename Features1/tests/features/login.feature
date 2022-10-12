Feature:
    As a user
    I want to login to the application 
    So that i can access to the home page

Scenario: Login with valid credential
    Given the user has navigated to the login page
    When  the user enters valid "validemail" and "validpassword"
    Then  the home page should be displayed on the webUI

Scenario: Login with invalid credential
    Given the user has navigated to the login page
    When  the user enters invalid "invalidemail" and "invalidpassword" 
    And   clicks the login button
    Then  the "invalid credentials" message should be pop in the login page

Scenario: Login with invalid email format
    Given the user has navigated to the login page
    When  the user enters invalid "invalidemail"
    Then  the message Please include an '@' in the email address.'invalidemail' is missing an @ should be popped


