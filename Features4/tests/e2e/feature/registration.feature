Feature:
    As user
    I want to register my credentials
    So that I can have access to the ContactFox Page

Background:
    Given the user has navigated to the login page
    And the user has navigated to the register page

Scenario:Register with valid credentials
    When the user registers with the following credentials
      |name   | email               | password   | confirmpassword  |
      |Dexya  | dexyap@gmail.com    | 123456789  | 123456789        |
    Then the home page should be displayed on the webUI 

 #These two Scenario steps provide popup message
#Scenario Outline:Register with invalid email format
#  When the user enters invalid email address format "<emailaddress>"
#    Then the popup message "<message>" should be displayed on the WebUI
#   Examples:
#        | emailaddress      | message                                 |
#        | deekshyapgmail.com | missing an @                            |
#        | abc@.com           | '.' is used at wrong position in '.com' |

#Scenario Outline:Register with unmatched password
#    When the user enters password as "<password>" and Confirm password "<confirmpassword>"
#    Then the popup message "<message>" should be displayed on the WebUI
#    Examples:
#    | password | confirmpassword  | message              |
#    | 1235678  | 123              | Password donot Match |
#   | 123      | 12345            | Password donot Match |

Scenario: Reregister the credentials which has already been registered
    Given the user has been register with the following credentials
      |name   | email               | password   | confirmpassword  |
      |Dexya  | dexyap@gmail.com    | 123456789  | 123456789        |
    And the user logged out from the home page
    And the user has navigated to the login page
    And the user has navigated to the register page
    When the user registers with the following credentials
      |name   | email               | password   | confirmpassword  |
      |Dexya  | dexyap@gmail.com    | 123456789  | 123456789        |
    Then the error message "User already exists. Please choose another email address." should be popup
