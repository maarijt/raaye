Feature: Sign in with Facebook account

  As a frequent visitor
  So that I can save my preferences
  I want to see categories that I like

Scenario: Sign in with facebook account

  Given I am on the home page
  When I follow "Sign in with Facebook"
  And I should see "Maarij"
