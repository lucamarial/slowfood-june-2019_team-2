Feature: User log in
  As a user
  In order to access my account
  I would like to be able log in

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