Feature: Adding links

Scenario: Adding a link
Given I am on the homepage
When I follow "Add link"
And I fill in "title" with "Wikipedia"
And I fill in "url" with "www.wikipedia.com"
And I press "Add"
Then I should see "Wikipedia"