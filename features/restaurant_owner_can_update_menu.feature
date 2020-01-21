@Javascript
Feature: Restaurant owner can add to menu
  As a restaurant owner,
  In order to keep my customers up to date regarding my products
  I would like to be able to make updates to my menu  

  Background:
    Given the following products exist
      | title              | content                     | price | category  |
      | Swedish meatballs  | ground beef, parsley, gravy | 30    | Entrees   |
      | Apple pie          | apples, cinnamon, sugar     | 20    | Desserts  |
      | Salad              | tomatoes, leafs             | 10    | Starters  |
    And the following user exists
      | email         | password    |
      | adam@mail.com | password123 |
    And I'm on the landing page
    And I click "Login"
    And I fill in "Email" with "adam@mail.com"
    And I fill in "Password" with "password123"
    And I click "Login"

  Scenario: Owner can add new products in menu
    When I click "New Product"
    And I fill in "Name" with "Salmon"
    And I fill in "Description" with "salmon, potatoes, sauce"
    And I fill in "Price" with "20"
    And I choose "Entree"
    And I click "Create Product"
    Then I visit the landing page
    And I should see "Salmon" 