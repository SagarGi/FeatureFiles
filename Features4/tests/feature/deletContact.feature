Feature:
    As user
    I want to delet added Contact
    So that I can manage unwanted contact

Background:
	Given the user logged in with valid email address "<email>" and valid password "<password>"

    Scenario Outline: Delete specific contact list
        Given the user enters following credentails are added
            | name | email         | phone      | contact types|
            | xyz  | xyz@gmail.com | 9875688990 | Personal     |
            | abc  | abc@gmail.com | 9588509560 | Professional |
        When the user deletes a contact with email "xyz@gmail.com"  
        Then that contact with email "xyz@gmail.com" should be removed from contact list
        But  the contact with email "abc@gmail.com" should be appear on  the contact list.

        Scenario Outline: Delete all created contacts from contact list
            Given Contacts has been added with name as "<name>", email as "<email>", phone as "<phone>" and  contact type as "<contact-type>"
            When User deletes a contact with email "<email>"
            Then that contact with email "<email>" should be removed from contact list 
            Examples:
            |name| email          | phone     | contact-type |
            |xyz | xyz@gmail.com  |9876543210 | Personal     |
            |Hari| hari@gmail.com |98067      | Professional |

 

