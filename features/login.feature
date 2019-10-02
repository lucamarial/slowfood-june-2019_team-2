Feature: Admin log in
  As a restaurant owner,
  In order to make updates to my restaurant page
  I would like to be able to log in and access my restaurant page

  Background:
    Given following admin exist
      | email            | password |
      | duhast@email.de  | password |
    And I am on the "sign in" page

  Scenario: Log in [Happy Path]
    When I fill in "Email" with "duhast@email.com"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Then I'm on the landing page