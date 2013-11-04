Feature: Page structure
	In order to see something
	As a visitor
	I need some sort of ui

	Background: 
		Given I am on the homepage

	Scenario: The title
		Then I should see "Bookmark Manager" 

	Scenario: The add link button
		Then I should see "Add link" within "header"

	Scenario: Sign up and Sign in
		Then I should see "Sign Up" within "header"

