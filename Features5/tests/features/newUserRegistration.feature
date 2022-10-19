Feature: Register
   As a user
   I want to register
   So that I can use the contact fox app

   Background:
       Given user has been navigated to registration page
   
   Scenario: New user registration with valid inputs
       When user enters following valid credentials:
         |name    |email                |password   |confirmPassword  |
         |Susmita |susmita412@gmail.com |zxcvbnm    |zxcvbnm          |
       And clicks "Register" button
       Then user should be navigated to the homepage

    Scenario Outline: New user registers with invalid inputs
       When the user registers with the following invalid inputs:
       |name  |email   |password   |confirmPassword|
       |<name>|<email> |<password> |<confirmPassword>|
       Then user should see the message "<error>"
       Examples:
         |name        |email                 |password  |confirmPassword  |error                            |
         |Susmita     |susmita412@gmail.com  |zxcvbnm   |zxcvbnn          |passwords do not match           |
         |Susmita     |susmita412@gmail.com  |zxcv      |zxcv             |password less than 6 characters  |
         |Susmita     |susmita412@gmail.com  |zxcvbnm   |zxcvb            |passwords less than 6 characters | 
         |Susmita     |susmita               |zxcvbnm   |zxcvbnn          |missing @ symbol                 |
         |Susmita     |@gmail.com            |zxcvbnm   |zxcvbnn          |part missing before @            |
         |            |                      |          |                 |please enter all the fields      |