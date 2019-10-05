@javascript
Feature: Visitor can add to order

  As a visitor,
  In order to select products I want to buy
  I would like to be able to add products to an order

  Background:
    Given the following products exist
      | title              | content                     | price | category  |
      | Swedish meatballs  | ground beef, parsley, gravy | 30    | Entrees   |
      | Apple pie          | apples, cinnamon, sugar     | 20    | Desserts  |
      | Salad              | tomatoes, leafs             | 10    | Starters  |
    And I'm on the landing page

  Scenario: Visitor can add products to cart
    When I click "Add to cart" on "Salad"
    Then I should see "1 item"