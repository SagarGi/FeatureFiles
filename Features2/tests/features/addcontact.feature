Feature:AddContact 
    As a user
    I want to add my contacts to the ContactFox
    So can easily remember the contacts that are necessary for message

    Background: User is looged In
        Given the  user  navigated to the login page
        When the user submit username and password
        Then the user should be logged in to the homepage

        Scenario:add to contacts with personal contact type
        Given the user is navigated to the home page
        When the user submit name with "name" and email with "valid email" and chooses the contact type as "personal"
        Then the user info will be added to the contact list  with the personal  badge
 
        Scenario:add to contacts with professional contact type
        Given the user is navigated to the home page
        When the user submit name with "name" and email with "valid email" and chooses the contact type as "professional"
        Then the user info will be added to the contact list  with the professional badge

        Scenario Outline:when you input invalid email
        Given a user has navigated to the homepage
        When the user enters with a "<email>"
        Then the user will thrown a "<message>"
        Examples:
        | email            | message|
        | abchefg98gmailcom |  Please enter an email address|
        | rits98.com       | Please enter an email address|
        | rira@gmail       | Please enter an email address|
        | risahgdgajda36gmail.com | Please enter an email address|
