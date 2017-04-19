Feature: User places an orders
  
  As a user I want to be able to place an order for food
  
Scenario: As a customer I want to be able to navigate from the homepage to the order page to place an order
  Given I am on the home page
  When I click on the "Create new article"
  Then I should be on the "Create an order" page
  And I should see the "Item" field