#language: en

Feature: Create User

- As user: create a user

Scenario: Sucessfully create a user
When i create a user
Then i verify if the user was registered