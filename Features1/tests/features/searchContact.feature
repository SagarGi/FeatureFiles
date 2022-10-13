Feature: Search Contacts 
    As a user
    I want to search contacts
    So that i can find contact easily  

    Scenario: Search contacts with name or email address
            Given the user has navigated to the contact page 
            When the user enters"<name>" or email "<email>" present in the contact list
                |name    |email             |
                |samiksha|samiksha@gmail.com|
            Then the contact should be display 
            

    Scenario: Search contacts with phone
            Given the user has navigated to the contact page
            When the user enters phone number as "phone"
            Then contacts shouldnot be displayed

    Scenario: Search contacts with different name or email address
            Given the user have navigated to the contact page and have the following contacts
                |name    |email             |
                |samiksha|samiksha@gmail.com|
            When the user enters different name  as "<name>" or different email as "<email>" from the following
                |name |email          |
                |samik|samik@gmail.com|
            Then contacts should not be displayed    

