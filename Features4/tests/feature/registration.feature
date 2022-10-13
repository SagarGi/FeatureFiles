Feature:
    As user
    I want to register my credentials
    So that I can have acess to the ContactFoxpage
Background:
    Given the Register Account page was navigated

Scenario:Register with valid credentials
    When the user login with the following credentails
      |Name   | Email address       | Password | Confirm password |
      |Dikshya| deekshyap@gmail.com | 1234567  | 1234567          |
    Then the ContactFox page should be navigated on WebUI

Scenario Outline:Register with invalid email format
    When the user enters invalid email address format "<Email address>"
    Then the popup message "<Message>" should seen
    Examples:
        | Email address      | Message                                 |
        | deekshyapgmail.com | missing an @                            |
        | abc@.com           | '.' is used at wrong position in '.com' |

Scenario Outline:Register with unmatched password
    When the user enters password as "<password>" and Confirm password "<Confirm password>"
    Then the popup message "<Message>" should seen
    Examples:
    | Password | Confirm password | Message              |
    | 1235678  | 123              | Password donot Match |
    | 123      | 12345            | Password donot Match |