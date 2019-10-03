Feature: Admin log in
  As a restaurant owner,
  In order to make updates to my restaurant page
  I would like to be able to log in and access my restaurant page

  Background:
    Given following user exist
      | email            | password |
      | duhast@email.de  | password |
    And I am on the "sign in" page

  Scenario: Log in [Happy Path]
    When I fill in "Email" with "duhast@email.com"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Then I'm on the landing page

		Scenario: Sign up [Happy Path]
    When I fill in "Email" with "ich@email.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up" button
    Then I'm on the landing page
  
  Scenario: User doesn't fill out forms [Sad Path]
    When I click "Sign up" button
    And I should see "Email can't be blank"
    And I should see "Password can't be blank"

  Scenario: User passes in password which is too short [Sad Path]
    When I fill in "Email" with "ich@email.de"
    And I fill in "Password" with "p"
    And I fill in "Password confirmation" with "p"
    And I click "Sign up" button
    Then I should see "Password is too short (minimum is 6 characters)"

  Scenario: User fills in non matching passwords [Sad Path]
    When I fill in "Email" with "ich@email.de"
    And I fill in "Password" with "password"
    And I fill in "Password" with "passwords"
    And I click "Sign up" button
    Then I should see "Password confirmation doesn't match Password"

  Scenario: User can't sign up with used email [Sad Path]
    When I fill in "Email" with "duhast@email.de"
    And I fill in "Password" with "password"
    And I fill in "Password" with "password"
    And I click "Sign up" button
    Then I should see "Email has already been taken"