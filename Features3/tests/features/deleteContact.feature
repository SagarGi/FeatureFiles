Feature: Delete a contact
    As a user 
    I want to delete a contact 
    So that contact will be removed from contact list

    Scenario:
        Given User is logged in and user is navigated to Contact Fox page
        And Contacts are added with name as "<name>", email as "<email>", phone as "<phone>" and  contact type as "<contact-type>"
            |name|email        |phone     |contact-type|
            |abc |abc@gmail.com|9898989898|personal    |
            |xyz |xyz@gmail.com|9876543210|personal    |
            |Ram |ram@gmail.com|9801234567|professional|
        When User deletes a contact with name "<name>", email "<email>", phone "<phone>" and contact type "<contact-type>"
        Then that contact with name "<name>", email "<emai>", phone "<phone>" and contact type "<contact-type>" should be removed from contact list and contact list should be decremented by 1
        Examples:
            |name|email        |phone     |contact-type|
            |xyz |xyz@gmail.com|9876543210|personal    |
            |Ram |ram@gmail.com|9801234567|professional|