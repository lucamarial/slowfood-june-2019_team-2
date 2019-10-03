Feature: User login for the application
    As a User
    In order to be able to buy some tasty meals
    I must be able to login to the application

		Background:
				Given following user exist
					|email					|password|
					|trott@mail.com	|12345678|
				And I visit the "landing" page

		Scenario: User should be able to login [Happy Path]
				And I click "Login" link
				And I fill in "Email" with "trott@mail.com"
				And I fill in "Password" with "12345678"
				And I click "Log in" button
				Then I should see "Signed in successfully."

		Scenario: User should be able to Sign up [Happy Path]
				And I click "Sign up" link
				And I fill in "Email" with "newuser@mail.com"
				And I fill in "Password" with "12345678"
				And I fill in "Password confirmation" with "12345678"
				And I click "Sign up" button
				Then I should see "Welcome! You have signed up successfully."

		Scenario: User can't sign up with already in use email [Sad Path]
				And I click "Sign up" link
				And I fill in "Email" with "trott@mail.com"
				And I fill in "Password" with "87654321"
				And I fill in "Password confirmation" with "87654321"
				And I click "Sign up" button
				Then I should see "Email has already been taken"

		Scenario: User need to enter correct email [Sad Path]
				And I click "Login" link
				And I fill in "Email" with "ross@mail.com"
				And I fill in "Password" with "12345678"
				And I click "Log in" button
				Then I should see "Invalid Email or password."

		Scenario: User need to enter correct password [Sad Path]
				And I click "Login" link
				And I fill in "Email" with "trott@mail.com"
				And I fill in "Password" with "87654321"
				And I click "Log in" button
				Then I should see "Invalid Email or password."