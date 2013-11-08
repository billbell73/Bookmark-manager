Feature: Sign in
In order to see my bookmarks
As a pre-registered member of the site
I want to be able to login 


Background: 
  Given there is a user "willbell@gmail.com" with password "blah"
  And I am on the homepage
	And I go to sign in
	And I fill in "email" with "willbell@gmail.com"

Scenario: Signing in
	When I fill in "password" with "blah"
	And I press "login"
	Then I should see "Welcome, willbell@gmail.com!"

Scenario: Attempting to sign in with incorrect password
	When I fill in "password" with "different"
	And I press "login"
	Then I should see "Your email or password is incorrect. Please try again"
