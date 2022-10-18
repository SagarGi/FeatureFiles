Feature:
    As user
    I want to delete added Contact
    So that I can remove the unwanted contact from my contact list.


Background:
#  Assuming that the follwing user has been registerd
    Given the user has logged in with valid email address "deekshyap@gmail.com" and valid password "123456"
    And the user has been navigated to the home page

Scenario: Delete specific contact
        Given the following users has been added
            | name | email         | phone      | contact types|
            | xyz  | xyz@gmail.com | 9875688990 | Personal     |
            | abc  | abc@gmail.com | 9588509560 | Professional |
        When the user deletes a contact with email "xyz@gmail.com"  
        Then the contact with email "xyz@gmail.com" should be removed from contact list
        But  the contact with email "abc@gmail.com" should appear in the contact list.

        Scenario Outline: Create and delete all created contacts from contact list
            Given Contacts has been added with name as "<name>", email as "<email>", phone as "<phone>" and  contact type as "<contact-type>"
            When User deletes a contact with email "<email>"
            Then that contact with email "<email>" should be removed from contact list 
            Examples:
            |name| email          | phone     | contact-type |
            |xyz | xyz@gmail.com  |9876543210 | Personal     |
            |Hari| hari@gmail.com |98067      | Professional |

 

