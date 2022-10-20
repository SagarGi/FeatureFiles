Feature: Search contact
    As a user
    I want to search contact by contact name
    So that only searched contact is displayed in contact list

    Background:
        Given the user has logged in with the valid email "deekshyap@gmail.com" and password "123456"
        And  navigated to Contact Fox page
        And the following contacts has been created 
            |name     |email               |phone       |contact-type  |
            |deekshya |deekshyap@gmail.com |9567989999  | personal     |
            |laxmi    |laxmi@gmail.com     |9689999978  | personal     | 
            |dipesh   |dipesh@gmail.com    |4678990000  | professional |
            |shyam    |shyam@gmail.com     |6788999999  | professional |

    Scenario Outline: Search contact with contact name
        When user search contact with contact name "<name>"
        Then contact with name "<name>" should only be displayed in contact list
        Examples:
            | name     |
            | deekshya |
            | laxmi    |
        
    Scenario Outline: Search contact with  alphabet of contact
        When user search contact with alphabet "<alphabet>"
        Then contacts which contains "<alphabet>" should only be displayed in contact list
        Examples:
           | alphabet |
           | d        |
           | l        |

    Scenario Outline: Search contact with contact email
        When user search contact with contact name "<email>"
        Then contact with email "<email>" should only be displayed in contact list
        Examples:
            | email               |
            | deekshyap@gmail.com |
            | laxmi@gmail.com     |