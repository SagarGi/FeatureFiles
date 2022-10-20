Feature: Register
   As a user
   I want to register
   So that I can use the contact fox app

   Background:
       Given user has been navigated to registration page
   
   Scenario: New user registration with valid inputs
       When the user registers with following credentials:
         |name    |email                |password     |confirmPassword  |
         |Salipa  |salipa123@gmail.com  |salipa12345  |salipa12345      |
       Then user should be navigated to the homepage

    Scenario Outline: New user registers with invalid inputs
       When the user registers with following credentials:
       |name  |email   |password   |confirmPassword|
       |<name>|<email> |<password> |<confirmPassword>|
       Then user should see the message "<error>"
       Examples:
         |name        |email                 |password  |confirmPassword  |error                            |
        #  |Susmita     |susmita412@gmail.com  |zxcvbnm   |zxcvbnn          |passwords do not match           |
        #  |Susmita     |susmita412@gmail.com  |zxcv      |zxcv             |password less than 6 characters  |
        #  |Susmita     |susmita412@gmail.com  |zxcvbnm   |zxcvb            |passwords less than 6 characters | 
         |            |                      |          |                 |Please enter all fields.      |