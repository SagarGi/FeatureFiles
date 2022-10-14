Feature: edit contact

   As a user
   I want to edit contact
   So that I can correct my contact details

   Scenario Outline: User wants to edit contact
        Given user has navigated to contact lists in the homepage containing following contacts:
        |name    |email    |phone     |contactType   |
        |<name>  |<email>  |<phone>   |<contactType> |

        When user clicks "edit" button of following contact:
        |name    |email                |phone     |contactType   |
        |Susmita |susmita412@gmail.com |984635346 |Personal      |

        And edits fields with following input and click "update" button:
        |name    |email                |phone     |contactType  |
        |Susmita |susmita412@gmail.com |985466654 |Professional |

        Then user should see the following contacts in the list:
        |name    |email                |phone     |contactType  |
        |Susmita |susmita412@gmail.com |985466654 |Professional |
        |Sita    |sita412@gmail.com    |          |Professional |  

        Examples:
          |name    |email                |phone     |contactType  |
          |Susmita |susmita412@gmail.com |984635346 |Personal     |  
          |Sita    |sita412@gmail.com    |          |Professional |  
   