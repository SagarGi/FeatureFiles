Feature: Add Contact
     As a user
     I want to add contacts
     So that I can save my contacts
     
     Background:
        Given user has been navigated to homepage

     Scenario Outline: User wants to add contacts with valid inputs
        When user inputs the field with following credentials and click "Add Contact" button:
        |name    |email    |phone     |contactType   |
        |<name>  |<email>  |<phone>   |<contactType> |
        Then user should see the following contacts:
        |name    |email    |phone     |contactType   |
        |<name>  |<email>  |<phone>   |<contactType> |
        Examples:
          |name    |email                |phone     |contactType  |
          |Susmita |susmita412@gmail.com |984635346 |Personal     |
          |Susmita |susmita412@gmail.com |          |Personal     |
          |Sita    |sita412@gmail.com    |984635446 |Professional |    
          |Sita    |sita412@gmail.com    |          |Professional |    

     Scenario Outline: User wants to add contacts with invalid email pattern
        When user inputs the field with following credentials and click "Add Contact" button
        |name    |email    |phone     |contactType   |
        |<name>  |<email>  |<phone>   |<contactType> |  
        Then user should see the message "<error>"
        Examples:
          |name    |email                |phone     |contactType  |error                         |
          |Susmita |susmita412gmail.com  |984635346 |Personal     |missing @ symbol              |
          |Susmita |@gmail.com           |          |Personal     |part before @ should be given |
          |Sita    |sita412gmail.com     |984635446 |Professional |missing @ symbol              |    
          |Sita    |@gmail.com           |          |Professional |part before @ should be given |

     Scenario Outline: User wants to add contacts with invalid inputs
        When user inputs the field with following credentials and click "Add Contact" button
        |name    |email    |phone     |contactType   |
        |<name>  |<email>  |<phone>   |<contactType> |  
        Then user should not see the following contacts:
        |name    |email    |phone     |contactType   |
        |<name>  |<email>  |<phone>   |<contactType> |  
        Examples:
          |name    |email                |phone     |contactType  |
          |        |susmita412gmail.com  |984635346 |Personal     |
          |        |                     |          |Personal     |
          |        |sita412gmail.com     |984635446 |Professional |    
          |        |                     |          |Professional |