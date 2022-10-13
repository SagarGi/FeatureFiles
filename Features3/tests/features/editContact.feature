Feature: Edit contact
    As a user 
    I want to edit already existing contact
    So that edited contact is updated and displayed in contact list

    Background:
        Given User is logged in and navigated to Contact Fox page 
        And the following contact exists 
            |name|email        |phone     |contact-type|
            |abc |abc@gmail.com|9898989898|personal    |
            |xyz |xyz@gmail.com|9876543210|personal    |
        And clicks Edit button, data is fetched in Edit contact form

    Scenario: Edit name only
        When User edits name as "John Doe" and updates contact
        Then Contact name should be updated

    Scenario: Edit email only
        When User edits email as "john@gmail.com" and updates contact
        Then Contact email should be updated

    Scenario: Edit phone number only
        When User edits phone as "9800000000" and updates contact
        Then Contact phone should be updated

    Scenario: Edit contact type only
        When User edits contact type 
        Then Contact type should be updated

    Scenario: Edit all fields
        When User edits all the fields 
        Then Contact should be updated with new data

    Scenario: Edit email with invalid format
        When User edits email to "abcgmail.com"
        Then validation error message as "Please include an '@' in the email address." should pop up

    Scenario: Edit contact details with empty input fields
        When User updates contact by removes all data from input fields
        Then Contact should not update with empty input field 
