Feature: Search Contacts 
    As a user
    I want to search contacts
    So that i can find contact easily  

    Scenario: User search contacts with email address
            Given the user has navigated to the contact page 
            When the user enters following email present in the contact list
                |email             |
                |samiksha@gmail.com|
            Then the contact should be display 
            

    Scenario: User search contacts with phone
            Given the user has navigated to the contact page
            When the user enters phone number as "9800000"
            Then contacts shouldnot be displayed

    Scenario: User search for contact that is not added in the contact list
            Given the user has navigated to the contact page
            And user has added the following contacts
                |Name    |Email              |Phone    |Contact Type|
                |Samiksha|Samiksha@gmail.com |9846000  |Personal    |
                |Binita  |Binita@gmail.com   |984600110|Personal    |
                |Anusha  |Anusha@gmail.com   |9846000  |Personal    |
            When the user enters following email in the search input:
                |email             |
                |samiksa@gmail.com |
            Then the contact search list should be empty     
            
            


