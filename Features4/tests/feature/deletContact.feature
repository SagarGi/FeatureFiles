Feature:
    As user
    I want to delet added Contact
    So that I can manage unwanted contact

Background:
	Given the user logged in with valid email address "<email>" and valid password "<password>"

    Scenario Outline: Delete specific contact list
        Given the user enters following credentails are added
            | name | email         | phone      | contact types|
            | xyz  | xyz@gmail.com | 9875688990 | Personal     |
        When the user delete the contact

