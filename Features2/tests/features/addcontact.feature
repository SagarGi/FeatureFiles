Feature:AddContact 
    As a user
    I want to add my contacts to the ContactFox
    So I can easily remember the contacts that are necessary for me

    # Background:
    #     Given the user will be navigated to the homepage
      
    #     Scenario Outline:Add to contacts with personal contact type
    #         When the user submits name with "<name>" and email with "<valid email>" and phone with "<number>" chooses the contact type as "<type>"
    #         And  clicks 
    #         Then the user info should be added to the contact list with "<type>" bagde 
    #         Examples:
    #          | name        | valid email      |  number | type         |    
    #          | rita        | rita@gmail.com   | 0000000 | Professional |
    #         #  | susmita     | susmita@gmail.com| 11111111| Personal     |

    #     Scenario Outline:when you input invalid email
    #         When the user enters with a "<email>"
    #         Then the user should be given a "<message>"
    #         Examples:
    #          | email                   | message                       |
    #          | abchefg98gmailcom       | Please enter an email address |
    #          | rits98.com              | Please enter an email address |
    #          | rira@gmail              | Please enter an email address |
    #          | risahgdgajda36gmail.com | Please enter an email address |


    Scenario: Add one contact 
        Given a user has navigated to the login dashboard
        And the user has clicked Register button
        And the user has been navigated to the Registration page
        And  the user has been registered with the name with "Rita" and email with "rita@gmail.com" and password with "password" and confirm password with "password"
        And the user has been navigated to the homepage
        When the user submits name with "Rita" and email with "rita@gmail.com" and phone with "0000000000" chooses the contact type as "personal"
        Then the user info should be added to the contact list with email "rita@gmail.com"