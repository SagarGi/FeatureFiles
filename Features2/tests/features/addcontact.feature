Feature:AddContact 
    As a user
    I want to add my contacts to the ContactFox
    So can easily remember the contacts that are necessary for message

    Background: User is looged In
        Given the user has navigated to the login page
        And the user submits username and password
        And the user was logged in to the homepage

        Scenario Outline:Add to contacts with personal contact type
            When the user submit name with "<name"> and email with "<valid email>" and  phone with "<number>" chooses the contact type as "<type>"
            Then the user info will be added to the contact list  with "type" bagde 
            Examples:
             | name        | valid email      |  number | type         |    
             | rita        | rita@gmail.com   | 0000000 | Professional |
             | susmita     | susmita@gmail.com| 11111111| Personal     |

        Scenario Outline:when you input invalid email
            When the user enters with a "<email>"
            Then the user will be given  a "<message>"
            Examples:
             | email                   | message                       |
             | abchefg98gmailcom       |  Please enter an email address|
             | rits98.com              | Please enter an email address |
             | rira@gmail              | Please enter an email address |
             | risahgdgajda36gmail.com | Please enter an email address |
