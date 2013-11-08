Feature: Sign up

Background: 
	Given I am on the homepage
	And I follow "Sign Up"
	And I fill in "email" with "willbell@gmail.com"
	And I fill in "password" with "blah"

Scenario: Signing up and creating record
	When I fill in "confirm_password" with "blah"
	And I press "Sign Up Now"
	Then there should be an entry for "willbell@gmail.com" in the database

Scenario: Signing up and receiving welcome message
	When I fill in "confirm_password" with "blah"
	And I press "Sign Up Now"
	When I am on the homepage
	Then I should see "Welcome, willbell@gmail.com!" 

Scenario: Attempt to sign up but password / confirmation don't match
	When I fill in "confirm_password" with "different"
	When I press "Sign Up Now"
	Then I should see "Password does not match the confirmation"

Scenario: Attempt to sign up but email already registered
	When I fill in "confirm_password" with "blah"
	And I press "Sign Up Now"
	When I am on the homepage
	And I follow "Sign Up"
	And I fill in "email" with "willbell@gmail.com"
	And I fill in "password" with "blah"
	When I fill in "confirm_password" with "blah"
	And I press "Sign Up Now"
	Then I should see "Sorry, that email is already registered"
