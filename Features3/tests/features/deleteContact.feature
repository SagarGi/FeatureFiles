Feature: Delete a contact
    As a user 
    I want to delete a contact 
    So that contact will be removed from contact list

    Background:
        Given User is logged in and user is navigated to Contact Fox page

    Scenario Outline: Delete all created contacts from contact list
        Given Contacts are added with name as "<name>", email as "<email>", phone as "<phone>" and  contact type as "<contact-type>"
            
        When User deletes a contact with name "<name>", email "<email>", phone "<phone>" and contact type "<contact-type>"
        Then that contact with name "<name>", email "<emai>", phone "<phone>" and contact type "<contact-type>" should be removed from contact list and contact list should be decremented by 1
        Examples:
            |name|email        |phone     |contact-type|
            |xyz |xyz@gmail.com|9876543210|personal    |
            |Ram |ram@gmail.com|9801234567|professional|

    Scenario Outline: Delete specific contact from contact list
        Given Contacts with following details are added
            |name|email        |phone     |contact-type|
            |abc |abc@gmail.com|9898989898|personal    |
            |xyz |xyz@gmail.com|9876543210|personal    |
        When User deletes a contact with email "<email>"
        Then User with email "<email>" should be deleted
        But other email "xyz@gmail.com" contacts should be displayed in contact list
        Examples:
            |email        |
            |xyz@gmail.com|