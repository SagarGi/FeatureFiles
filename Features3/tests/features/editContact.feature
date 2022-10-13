Feature:
    As a user 
    I want to edit already added contact
    So that edited contact is updated

    Background:
        Given User is logged in and navigated to Contact Fox page 
        And clicks Edit button, data is fetched in Edit contact form

    Scenario: Edit name only
        When User edits name and updates contact
        Then Contact name should be updated

    Scenario: Edit email only
        When User edits email and updates contact
        Then Contact email should be updated

    Scenario: Edit phone number only
        When User edits contact type
        Then Contact type should be updated

    Scenario: Edit all fields
        When User edits all the fields 
        Then Contact should be updated with new data

    Scenario Outline: Edit contact details
        When User edits name with "<name>", email with "<email>", phone with "<phone>" and contact type with"<contactType>"
        Then Contact should be updated with new values
        Examples:
        |   name   |    email    |   phone    |    contactType    |   
        |   abc    |             |            |                   |
        |          |abc@gmail.com|            |                   |
        |          |             | 9871234560 |                   |
        |          |             |            |   Professional    |
        |          |             |            |     Personal      |
        |   xyz    |xyz@gmail.com| 9812345607 |   Professional    |

    Scenario: Edit email with invalid format
        When User edits email to "abcgmail.com"
        Then validation error message should pop up

    Scenario: Edit contact details with empty input fields
        When User removes all data from  name fields
        Then Contact will not update with empty input field 
