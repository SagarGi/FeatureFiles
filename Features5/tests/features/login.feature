Feature: login

   As a user
   I want to login
   So that I can access my account

   Scenario: login to contact fox account
        Given user has been navigated to login page
        When user logs in with valid "susmitathapa412@gmail.com" and "zxcvbnm123"
        Then user should be navigated to home page

   Scenario Outline: login to contact fox account
        Given user has been navigated to login page
        When user logs in with email address as "<email>" and Password as "<password>"
        Then user should see the error message 
        Examples:
            |email                |password        |
            |validEmail           |invalidPassword |
            |invalidEmail         |validPassword   |
            |invalidEmail         |invalidPassword |
            |susmita              |validPassword   |
            |susmita              |invalidPassword |
            |                     |                |