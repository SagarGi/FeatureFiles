Feature:Delete Contact
    As a user
    I want to delete my contacts 
    So that i can remove unwanted contacts

    Scenario: Delete specific user from contact list
        Given the users has navigated to the contact page
        And the following user has been added to the contact list
            |name    |email             |contact-type|
            |samiksha|samiksha@gmail.com|Personal    |
            |anusha  |anusha@gmail.com  |Professional|
            |binita  |binita@gmail.com  |Professional|
            |susma   |susma@gmail.com   |Personal    |
        When the user deletes following contact with email
            |email             |
            |samiksha@gmail.com|
        Then the  user with email "samiksha@gmail.com" should not  be in contact list anymore
        But the user with following email should be in the contact list
            |email           |
            |anusha@gmail.com|
            |binita@gmail.com|
            |susma@gmail.com |

    Scenario: Create and delete user from contact list
        Given the user has navigated to the contact page
        And the following user has been added to the contact list
            |name    |email             |contact-type|
            |samiksha|samiksha@gmail.com|Personal    |
        When the user deletes following contact with email
            |email             |
            |samiksha@gmail.com|
        Then the  user with email "samiksha@gmail.com" should not  be in contact list anymore
    
