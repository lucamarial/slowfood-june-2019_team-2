Feature: Visitor can add product to cart

  As a visitor,
  In order to select products I want to buy
  I would like to be able to add products to an order

  Background:
    Given the following product exist
      |title      |content    | price | category|
      |Lasagna    |It is good | 100   |main     |
      |apple pie  |It is tasty| 200   |desert   |
      |salad      |It is green| 300   |starters |

  Scenario: Visitor can add products to basket
    When I'm on the landing page
    And I click 'Add to cart' button