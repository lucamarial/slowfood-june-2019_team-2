Feature: Visitor views list of categorized products
  As a visitor,
  In order to choose product more easily
  I would like to see the products sorted in categories

  Background: 
    Given the following products exist
      |title              |content                     | price| category |
      |Swedish meatballs  |ground beef, parsley, gravy | 30   | entree   |
      |Apple pie          |apples, cinnamon, sugar     | 20   | dessert  |
      |Salad              |tomatoes, leafs             | 10   | starter  |

    And I'm on the landing page

  Scenario: Successfully
    Then I should see "Swedish meatball" in the "entree" section
    And I should see "Apple pie" in the "dessert" section
    And I should see "Salad" in the "starter" section 