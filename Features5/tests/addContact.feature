Feature: Add Contact
     As a user
     I want to add contacts
     So that I can save my contacts
     
     Background:
        Given user has been navigated to homepage

     Scenario Outline: User wants to add contacts with valid inputs
        When user enters "<name>","<email>","<phone>" and checks "<contactType>"
        And clicks "Add Contact" button  
        Then user should see the added contacts
        Examples:
          |name    |email                |phone     |contactType  |
          |Susmita |susmita412@gmail.com |984635346 |Personal     |
          |Susmita |susmita412@gmail.com |          |Personal     |
          |Sita    |sita412@gmail.com    |984635446 |Professional |    
          |Sita    |sita412@gmail.com    |          |Professional |    

     Scenario Outline: User wants to add contacts with invalid email pattern
        When user enters "<name>","<email>","<phone>" and checks "<contactType>"
        And clicks "Add Contact" button  
        Then user should see the message "<error>"
        Examples:
          |name    |email                |phone     |contactType  |error                         |
          |Susmita |susmita412gmail.com  |984635346 |Personal     |missing @ symbol              |
          |Susmita |@gmail.com           |          |Personal     |part before @ should be given |
          |Sita    |sita412gmail.com     |984635446 |Professional |missing @ symbol              |    
          |Sita    |@gmail.com           |          |Professional |part before @ should be given |

     Scenario Outline: User wants to add contacts with invalid inputs
        When user enters "<name>","<email>","<phone>" and checks "<contactType>"
        And clicks "Add Contact" button  
        Then contact should not be displayed 
        Examples:
          |name    |email                |phone     |contactType  |
          |        |susmita412gmail.com  |984635346 |Personal     |
          |        |                     |          |Personal     |
          |        |sita412gmail.com     |984635446 |Professional |    
          |        |                     |          |Professional |