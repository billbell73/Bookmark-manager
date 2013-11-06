Feature: Sign in
In order to see my bookmarks
As a pre-registered member of the site
I want to be able to login 


#Background: 
  #Given there is a user “willbell@gmail.com"

Scenario: Signing in
Given I am on the homepage
And I go to sign in
And I fill in "email" with "willbell@gmail.com"
And I fill in "password" with "blah"
And I press "login"
Then I should see "Welcome"