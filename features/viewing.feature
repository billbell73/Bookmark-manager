Feature: Viewing links
In order to avoid having a huge memory
As a person who loves surfing the web
I want to view the links I saved before

Scenario: Viewing a link
	
	* the following links are available:
		|title      |  url							| tags |
		|Superpage | http://example.com |  ff |
	* I am on the homepage
	#And show me the page
	Then I should see "Superpage"