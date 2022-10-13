Feature:
    As a user 
    I want to Register to the Contact Fox
    So that i can have the access of homepage

Background: Given the user has navigated to the register page


Scenario: Register with valid Credentials
    When the user enter "Name" ,valid "validEmailAddress", "validPassword" and confirm password as "validPassword" 
    Then  the home page should be displayed on the webUI
    

Scenario Outline: Register with invalid email format
    When the user enters name as "<name>" email address as "<invalidemail>" and password as "<password>" and confirm password as "<password>"
    Then the error "<message>" should pop
    Examples:
        |name|invalidemail |password|message                                |
        |abc |abc.com      |hello123|missing an @                           |
        |abc |abc@.com     |hello123|. is used at a wrong position in a .com|
        |abc |abc@gmail    |hello123|                                       |

Scenario Outline: Register with  password length less than 6
    When the user enters name as "<name>" email address as "<validemail>" and password as "<invalidpassword>" and confirm password as "<invalidpassword>"
    Then the error "<message>" should pop
    Examples:
        |name|validemail         |invalidpassword|message                                |
        |abc |abc@gmail.com      |hello          |please length this text to 6 character |

Scenario Outline: Register with unmatched password and confirm password
    When the user enters name as "<name>" email address as "<validemail>" and password as "<password>" and confirm password as "<confirmpassword>"
    Then the error "<message>" should pop
    Examples:
        |name|validemail         |password         |conform password|message             |
        |abc |abc@gmail.com      |hello123         |hello11         |password donot match|






        


      