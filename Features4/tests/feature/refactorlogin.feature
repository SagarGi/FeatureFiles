Feature:
    As user
    I want to login
    So that I can access the to the homepage

Background:
    Given the user has registered email "" and password ""
    Then the user should be navigated to the loginPage


Scenario: Login with valid Credentials
When the user login with the following credentails
| Email Address       | Password |
| deekshyap@gmail.com | dikshya  |
| dikshyap@gmail.com  | hello    |
Then the user should be access to ContactFox Page

Scenario Outline:Login with invalid email format
    When the user enters invalid email address format "<Email address>"
    Then the popup message "<Message>" should seen
    Examples:
        | Email address      | Message                                 |
        | deekshyapgmail.com | missing an @                            |
        | abc@.com           | '.' is used at wrong position in '.com' |

Scenario Outline:Login with invalid credentails
    When the user tries to login with email address "<Email Address>" and password "<Password>"
    Then the user should see message "<message>"  
    Examples:
    | Email Address | Password |
    | valid         | invalid  |  
    | invalid       | valid    |
    | invalid       | invalid  | 