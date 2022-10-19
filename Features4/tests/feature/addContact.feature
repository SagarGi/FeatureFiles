Feature:
    As user
    I want to add contacts
    So that I can save my contacts

Background:
	Given the user has logged in with the valid email "deekshyap@gmail.com" and password "123456"
    And the user navigated to the homepage 

Scenario Outline: Add Contact 
    When the user enters name as "<Name>", email as "<email>", phone as "<Phone>" and  Contact type as "<Contact Type>"    
    Then the contacts with name as "<Name>", email as "<email>", phone as "<Phone>" and  Contact type as "<Contact Type>"should be displayed
    Examples: 
        | Name | Email           | Phone       | Contact Type |
        | Hari | hari@gmail.com  | 9477859959  | Personal     |
        | Ram  | ram@gmail.com   | 9883738388  | Professional |

Scenario Outline: User added invalid email format
    When the user enters name as "<Name>", email as "<email>", phone as "<Phone>" and  Contact type as "<Contact Type>"
    Then the popup message "<Message>" should be seen
    Examples:
        | Name | Email        | Phone       | Contact Type | Message                                    |
        | abc  | xyxgmail.com | 98688664884 | Personal     | Please include an '@' in the email address |
        | xyz  | yhh@.com     | 65493934995 | Professional | . is used at a wrong position in a .com    |