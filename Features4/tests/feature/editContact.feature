Feature:
    As a user
    I want to edit contact
    So that I can correct mistakes 

Background:
    Given the user has logged in with the valid email "deekshyap@gmail.com" and password "123456"
    And  navigated to Contact Fox page
       

Scenario:Edit specific contact information
     Given the following contacts have been created 
        |name     |email               |phone       |contact-type  |
        |deekshya |deekshyap@gmail.com |9567989999  | personal     |
        |laxmi    |laxmi@gmail.com     |9689999978  | personal     | 
        |dipesh   |dipesh@gmail.com    |4678990000  | professional |
        |shyam    |shyam@gmail.com     |6788999999  | professional |

    When the user makes the following updates with email "deekshyap@gmail.com" :
        | Name     | Email                 | Phone | Contact Type    |
        | deekshya | deekshyppp@gmail.com  |       | professional    |
    Then the contact with the email "deekshyap@gmail.com" should be updated
        | Name     | Email                  | Phone      | Contact Type |
        | deekshya | deekshyappp@gmail.com  | 956798999  | Personal     | 

Scenario: Add single user and edit its data
  Given the following contacts have been created 
        |name     |email               |phone       |contact-type  |
        |deekshya |deekshyap@gmail.com |9567989999  | personal     |
    When user updates the contact with email "deekshyap@gmail.com" with following data:
        |phone     |contactType   |
        |985777654 |Professional  |
    Then the updated contact with email "helllpp@gmail.com" in the contact list should be:
        |name  |email             |phone     |contactType   |
        |hello |helllpp@gmail.com |985777654 |Professional  |

