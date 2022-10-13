Feature:
   As a user
   I want to register
   So that I can use the contact fox app

   Background:
       Given user has been navigated to registration page
   
   Scenario: New user registration
       When user enters following valid credentials:
         |name    |email                |password   |confirmPassword  |
         |Susmita |susmita412@gmail.com |zxcvbnm    |zxcvbnm          |
         |Sita    |sita123@gmail.com    |abcdef     |abcdef           |
       And clicks "Register" button
       Then user should see the homepage

    Scenario Outline: When new user registers with wrong input
       When user enters "<name>","<email>","<password>" and "<confirmPassword>"
       And clicks "Register" button
       Then user should see the message "<error>"
       Examples:
         |name        |email                 |password  |confirmPassword  |error                            |
         |Susmita     |susmita412@gmail.com  |zxcvbnm   |zxcvbnn          |passwords do not match           |
         |Susmita     |susmita412@gmail.com  |zxcv      |zxcv             |password less than 6 characters  |
         |Susmita     |susmita412@gmail.com  |zxcvbnm   |zxcvb            |passwords less than 6 characters | 
         |Susmita     |susmita               |zxcvbnm   |zxcvbnn          |missing @ symbol                 |
         |Susmita     |@gmail.com            |zxcvbnm   |zxcvbnn          |part missing before @            |
         |            |                      |          |                 |please enter all the fields      |