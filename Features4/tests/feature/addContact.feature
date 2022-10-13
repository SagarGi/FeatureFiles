Feature:
    As user
    I want to add contact to the homepage
    So that I can find contacts

Background:
	Given I navigate to the login page
	When I submit Email and password
    And  Click on the "Login" button
	Then I should be logged in 
    Then homepage should be displayed  

Scenario: Add contact at the homepage
When the user add with the following credentails
| Name |  Valid Email        | Phone       | Contact Type |
| Hari | deekshyap@gmail.com | 9477859959  | Personal     |
| Xyz  | xyap@gmail.com      | 8549560060  | Professional |
And Click Add Contact Button
Then the  contact should be displayed

Scenario Outline: Added invalid email format
     When the user added name "<Name>" ,invalid email "<Email>" ,phone "<Phone>" and Contact Type "<Contact Type>"
     Then the popup message "<Message>" should be seen
     Examples:
     | Name | Email        | Phone  | Contact Type | Message                                       |
     | abc  | xyxgmail.com | 986886 | Personal     | Please include an '@' in the email address |
     | xyz  | yhh@.com     | 654939 | Professional | . is used at a wrong position in a .com    