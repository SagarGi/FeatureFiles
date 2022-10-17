Feature: edit contact

   As a user
   I want to edit contact
   So that I can correct my contact details

   Scenario: add single user and edit its data
        Given user has added following contact in the contact list:
        |name    |email                |phone     |contactType   |
        |Susmita |susmita412@gmail.com |984635346 |Personal      |  

        When user clicks its "edit" button and edits fields with following input:
        |name    |email                |phone     |contactType  |
        |Susmita |susmita412@gmail.com |985466654 |Professional |

        Then user should see the following contact in the lcontact list:
        |name    |email                |phone     |contactType  |
        |Susmita |susmita412@gmail.com |985466654 |Professional |

   Scenario: user wants to edit contact of specific user in the contact list 
        Given user has added following contact in the contact list:
        |name    |email                |phone     |contactType   |
        |Susmita |susmita412@gmail.com |984635346 |Personal      |  
        |Sita    |sita123@gmail.com    |984635346 |Personal      |
        |Susmita |susmita412@gmail.com |984635346 |Personal      |

        When user clicks its "edit" button and edits fields with following input:
        |name    |email                |phone     |contactType  |
        |Susmita |susmita412@gmail.com |985466654 |Professional |

        Then user should see the following contact in the lcontact list:
        |name    |email                |phone     |contactType  |
        |Susmita |susmita412@gmail.com |985466654 |Professional |