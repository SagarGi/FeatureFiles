Feature: Delete a contact
    As a user 
    I want to delete contact 
    So that contact will be removed from contact list

    Background:
        Given the User has logged in and navigated to Contact Fox page

    Scenario Outline: Delete all created contacts from contact list
        Given Contacts has been added with name as "<name>", email as "<email>", phone as "<phone>" and  contact type as "<contact-type>"
        When User deletes a contact with email "<email>"
        Then that contact with email "<email>" should be removed from contact list 
        Examples:
            |name|email        |phone     |contact-type|
            |xyz |xyz@gmail.com|9876543210|personal    |
            |Ram |ram@gmail.com|9801234567|professional|

    Scenario: Delete specific contact from contact list
        Given Contacts with following details has been added
            |name|email        |phone     |contact-type|
            |abc |abc@gmail.com|9898989898|personal    |
            |xyz |xyz@gmail.com|9876543210|personal    |
        When User deletes a contact with email "abc@gmail.com"
        Then that contact with email "abc@gmail.com" should be removed from contact list
        But another contact with email "xyz@gmail.com" should be displayed in contact list