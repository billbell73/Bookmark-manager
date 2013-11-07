Feature: Adding tags to links
In order to be able to navigate links
As someone who has many links
I want links to have tags, with one tag possible to apply to many links

	Scenario: A link can have a tag
	Given the following links are available:
		|title      	|  url										| tags       |
		|Snowboarding | http://snowboarding.com |	awesome		 |
	When I am on the homepage
	And show me the page
	Then I should see "awesome"
