Feature:AddContact 
    As a user
    I want to add my contacts to the ContactFox
    So can easily remember the contacts that are necessary for message

    Background: User is looged In
        Given the  user  navigated to the login page
        And the user submits username and password
        And  the user was logged in to the homepage

        Scenario:add to contacts with personal contact type
        When the user submit name with "name" and email with "valid email" and chooses the contact type as "personal"
        Then the user info will be added to the contact list  with the personal  badge
 
        Scenario:add to contacts with professional contact type
        When the user submit name with "name" and email with "valid email" and chooses the contact type as "professional"
        Then the user info will be added to the contact list  with the professional badge

        Scenario Outline:when you input invalid email
        When the user enters with a "<email>"
        Then the user will thrown a "<message>"
        Examples:
        | email            | message|
        | abchefg98gmailcom |  Please enter an email address|
        | rits98.com       | Please enter an email address|
        | rira@gmail       | Please enter an email address|
        | risahgdgajda36gmail.com | Please enter an email address|


# nothing to update 
# as of now