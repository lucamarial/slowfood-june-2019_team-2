Feature:
  As a visitor,
  In order to navigate the site
  I would like to use a navbar

  Scenario: Viewing a nav bar with a log in bar
    When I'm on the landing page
    Then I should see "Login" button
    