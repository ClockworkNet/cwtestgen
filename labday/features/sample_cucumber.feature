# All Features start with a Feature
Feature: In Order to run a Cucumber Test
	A tester must have a feature file

# This is what Tags look like.  Add as many as you want to any Feature or Scenario
@tag_example
Scenario: Example Cucumber File
	Given I am on the Home Page
	Then the page title should include "Home"

Scenario: You can have multiple scenarios in one file
	Given I am on the Home Page
	When I click Contact Us
	Then I should be on the Contact Us page
	