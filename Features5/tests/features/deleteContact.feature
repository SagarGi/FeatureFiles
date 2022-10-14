Feature: Delete Contact
     As a user
     I want to delete contact
     So that I can free up the space
    
   Scenario Outline: User wants to delete contact
        Given user has navigated to contact lists in the homepage containing following contacts:
        |name    |email    |phone     |contactType   |
        |<name>  |<email>  |<phone>   |<contactType> |

        When user clicks "delete" button of following contact:
        |name    |email                |phone     |contactType   |
        |Susmita |susmita412@gmail.com |984635346 |Personal      |

        Then user should see the following contacts in the list:
        |name    |email                |phone     |contactType  |
        |Susmita |susmita412@gmail.com |          |Personal     |
        |Sita    |sita412@gmail.com    |984635446 |Professional |    
        |Sita    |sita412@gmail.com    |          |Professional | 
        Examples:
          |name    |email                |phone     |contactType  |
          |Susmita |susmita412@gmail.com |984635346 |Personal     |
          |Susmita |susmita412@gmail.com |          |Personal     |
          |Sita    |sita412@gmail.com    |984635446 |Professional |    
          |Sita    |sita412@gmail.com    |          |Professional |    