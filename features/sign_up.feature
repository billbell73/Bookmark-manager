Feature: Sign up

Scenario: Signing up and creating record
Given I am on the homepage
And I follow "Sign Up"
When I fill in "email" with "willbell@gmail.com"
And I fill in "password" with "blah"
And I fill in "confirm_password" with "blah"
And I press "Sign Up Now"
Then there should be an entry for "willbell@gmail.com" in the database

Scenario: Signing up and receiving welcome message
Given I am on the homepage
And I follow "Sign Up"
When I fill in "email" with "willbell@gmail.com"
And I fill in "password" with "blah"
And I fill in "confirm_password" with "blah"
And I press "Sign Up Now"
When I am on the homepage
Then I should see "Welcome, willbell@gmail.com!" 

Scenario: Attempt to sign up but password / confirmation don't match
Given I am on sign up
And I fill in "email" with "willbell@gmail.com"
And I fill in "password" with "blah"
And I fill in "confirm_password" with "different"
When I press "Sign Up Now"
And I am on sign up
Then I should see "Sorry, password and password confirmation did not pass"
