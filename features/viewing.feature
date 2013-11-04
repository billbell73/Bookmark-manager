Feature: Viewing links
In order to avoid having a huge memory
As a person who loves surfing the web
I want to view the links I saved before

Scenario: Viewing a link
	Given I am on the homepage
	And I have save the following links:
		|name      |  uri								|
		|Superpage | http://example.com |
	Then 