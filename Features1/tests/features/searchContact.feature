Feature: Search Contacts 
    As a user
    I want to search contacts
    So that i can find contact easily  

    Scenario: Search contacts with email address
            Given the user has navigated to the contact page 
            When the user enters email "<email>" present in the contact list
                |email             |
                |samiksha@gmail.com|
            Then the contact should be display 
            

    Scenario: Search contacts with phone
            Given the user has navigated to the contact page
            When the user enters phone number as "9800000"
            Then contacts shouldnot be displayed

    Scenario: Search contacts with different email address
            Given the user have navigated to the contact page and have the following contact email
                |email             |
                |samiksha@gmail.com|
                |binita@gmail.com  |
            When the user enters different email as "<email>" from the following
                |email          |
                |samik@gmail.com|
            Then contact should not be displayed    

    Scenario: Search contact with different name
        Given the user have navigated to the contact page and have the following contact names
            |name    |
            |Samiksha|
            |binita  |
        When the user enters different name as "Sami" 
        Then contact should not be display


