Feature: Add business to a category

As a willing contributer
So that I can add a business and rate it
I want to add a business so that it can be rated by others


Given the following Categories exist:

| title | description |
| Food  | tasty       |

Scenario: Go to Add a business

Given I am on the home page
And I follow "Add new Category"
Then I should be on the add a category page

Scenario: Create new Category

Given I am on the add a category page
When I fill in "Title" with "Food"
And I press "Save Changes"
Then I should see "Food"
 

