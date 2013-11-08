Feature: Signing out

Scenario: User signs out
	Given there is a user "willbell@gmail.com" with password "blah"
  And I am on the homepage
	And I go to sign in
	And I fill in "email" with "willbell@gmail.com"
	And I fill in "password" with "blah"
	And I press "login"
	When I press "logout"
	Then I should not see "Welcome, willbell@gmail.com!"