Feature: Visitor views list of categorized products
  As a visitor,
  In order to choose product more easily
  I would like to see the products sorted in categories

  Background:
    Given the following products exist
      | title              | content                     | price | category  |
      | Swedish meatballs  | ground beef, parsley, gravy | 30    | Entrees   |
      | Apple pie          | apples, cinnamon, sugar     | 20    | Desserts  |
      | Salad              | tomatoes, leafs             | 10    | Starters  |
    And I'm on the landing page

  Scenario: Successfully
    Then I should see "Starters"
    And I should see "Salad"
    And I should see "Entrees"
    And I should see "Swedish meatballs"
    And I should see "Desserts"
    And I should see "Apple pie"