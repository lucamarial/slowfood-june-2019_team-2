Feature: Restaurant owner can login

  As a restaurant owner,
  In order to make updates to my restaurant page
  I would like to be able to log in and access my restaurant page

  Background: 
    Given following user exist
      | email            | password | admin |
      | duhast@email.de  | password | true  |
    And the following products exist
      | title              | content                     | price | category  |
      | Swedish meatballs  | ground beef, parsley, gravy | 30    | Entrees   |
    And I'm on the landing page

  Scenario: Successfully logs in [Happy Path]
    When I click "Login" button
    And I fill in "Email" with "duhast@email.de"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Then I should see "Edit"
