Feature: Edit Contacts
    As a user
    I want to edit my existing contacts 
    So that i can make some update and display it in my contact list

    Background:
        Given a user is navigated to the contact page 
        And has following contact list 
            |name|email        |phone   |contact-type|
            |abc |abc@gmail.com|98000000|Personal    |
            |aaa |aaa@gmail.com|98111111|Professional|
        And clicks on the "Edit" button , data is displayed on the edit contact form
        

        
        Scenario: Edit name only
            When  the user enters name as "samiksha" 
            And clicks on updates contact button
            Then  the contact name should be updated

        
        Scenario: Edit email only
            When  the user edits email as "samiksha@abc.com"
            And clicks on update contact button
            Then  the contact email should be updated

        
        Scenario: Edit phone only
            When  the user edits phone as "98001000"
            And clicks on update contact button
            Then  the contact phone should be updated

        
        Scenario: Edit contact type only
            When  the user edits contact type as "Personal"
            And clicks on update contact button
            Then  the contact type should be updated


        Scenario: Edit all inputs fields
            When the user edits all the input fields from following
                |name     |email                 |phone   |
                |samikshya|samiksha2346@gmail.com|98723144|
            Then the contact should be updated with the new data

        Scenario Outline: Edit email with invalid pattern
            When the user edits email as "<email>" 
            Then the error message "<message>" should be poped 
            Example:
                |email      |message                               |
                |abc123@.com|.is used as a wrong position in '.com'|
                |abcgmail.com|@ is missing                         |

        Scenario: Edit contact with empty fields
            When the user edit contact with empty fields
            Then the contact with empty fields should not be updated   



        

        
    



                                            