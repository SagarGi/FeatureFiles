Feature: Add new contact
    As a user
    I want to add contact 
    So that it will be displayed in contact list

    Background:
        Given User is logged in and navigated to Contact Fox page

    Scenario Outline: Add contact with full details
        When User enters name as "<name>", email as "<email>", phone as "<phone>" and contact type as "<contact-type>"
        Then contact with name as "<name>", email as "<email>", phone as "<phone>" and contact type as "<contact-type>" should be created and displayed in contact list
        Examples:
            |name|email        |phone     |contact-type|
            |abc |abc@gmail.com|9801234567|personal    |
            |xyz |xyz@gmail.com|9874561230|professional|

    Scenario Outline: Add contact without full details
        When User enters name as "<name>", email as "<email>", phone as "<phone>" and contact type as "<contact-type>"
        Then contact with name as "<name>", email as "<email>", phone as "<phone>" and contact type as "<contact-type>" should not be created 
        Examples:
            |name|email        |phone     |contact-type|
            |    |abc@gmail.com|9801234567|personal    |
            |    |abc@gmail.com|9801234567|professional|
            |abc |             |9801234567|personal    |
            |abc |             |9801234567|professional|
            |abc |abc@gmail.com|          |personal    |
            |abc |abc@gmail.com|          |professional|
            |    |             |9801234567|personal    |
            |    |             |9801234567|professional|
            |abc |             |          |personal    |
            |abc |             |          |professional|
            |    |abc@gmail.com|          |personal    |
            |    |abc@gmail.com|          |professional|
            |    |             |          |personal    |
            |    |             |          |professional|