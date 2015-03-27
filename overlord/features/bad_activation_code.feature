Feature: Evil mastermind, in order to verify that the bomb is working properly, I want to activate a bomb

Scenario: Mastermind Lands on the main page and enters default values
and puts the wrong activation code in
  Given I am on the config page
  When I use the default codes
  Then I land on the Activate page
  When I enter '1235' to activate the bomb
  Then the bomb status is 'inactive'

Scenario: Mastermind Lands on the main page and enters values for the codes and puts the wrong activation code in
  Given I am on the config page
  When I use '6789' as a act code, '9876' as a deact code
  Then I land on the Activate page
  When I enter '1235' to activate the bomb
  Then the bomb status is 'inactive'
