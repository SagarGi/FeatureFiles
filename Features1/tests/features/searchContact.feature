Feature: Search Contacts 
    As a user
    I want to search contacts
    So that i can find contact easily  

    Background:
        Given the user has navigated to the contact page
        And the following contacts have been added to the contact list
            |Name    |Email              |Phone    |Contact Type|
            |Samiksha|Samiksha@gmail.com |9846000  |Personal    |
            |Binita  |Binita@gmail.com   |984600110|Personal    |
            |Anusha  |Anusha@gmail.com   |9846000  |Personal    |

    
    Scenario: User search contacts with email address
        When the user enters following email in the search input
            |Email             |
            |Samiksha@gmail.com|
        Then the contact with email "samiksha@gmail.com" should be displayed in the contact list

    Scenario: User search contacts with name
        When the user enters following email in the search input
            |Name    |
            |Samiksha|
        Then the contact with name "Samiksha" should be displayed in the contact list    
            

    # Scenario: User search contacts with phone
    #     When the user enters phone number as "9800000"
    #     Then contact search list should be empty

    # Scenario: User search for contact that is not added in the contact list
    #     When the user enters following email in the search input
    #         |email             |
    #         |samiksa@gmail.com |
    #     Then the contact search list should be empty