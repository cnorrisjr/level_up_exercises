Feature: Evil mastermind, in order to verify that the bomb is working properly, I wants to activate the bomb.

Scenario: Mastermind Lands on the main page and uses the default codes
  Given I am on the config page
  When I use the default codes
  Then I land on the Activate page
  When I enter '1234' to activate the bomb
  Then My bomb is activated and I have '3' attempts to disarm

Scenario: Mastermind Lands on the main page and uses the custom codes
  Given I am on the config page
  When I use '6789' as a act code, '9876' as a deact code
  Then I land on the Activate page
  When I enter '6789' to activate the bomb
  Then My bomb is activated and I have '3' attempts to disarm
