Feature:
    As user
    I want to register my credentials
    So that I can have acess to the ContactFoxpage
Background:
    Given the user has navigated to register account page

Scenario:Register with valid credentials
    When the user registers with the following credentials
      |Name   | Email address       | Password | Confirm password |
      |Dikshya| deekshyap@gmail.com | 1234567  | 1234567          |
    Then the user should be navigated to home page

Scenario Outline:Register with invalid email format
    When the user enters invalid email address format "<Email address>"
    Then the popup message "<Message>" should be displayed on the WebUI
    Examples:
        | Email address      | Message                                 |
        | deekshyapgmail.com | missing an @                            |
        | abc@.com           | '.' is used at wrong position in '.com' |

Scenario Outline:Register with unmatched password
    When the user enters password as "<Password>" and Confirm password "<Confirm password>"
    Then the popup message "<Message>" should be displayed on the WebUI
    Examples:
    | Password | Confirm password | Message              |
    | 1235678  | 123              | Password donot Match |
    | 123      | 12345            | Password donot Match |