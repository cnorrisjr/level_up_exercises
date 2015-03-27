Feature: Evil mastermind, in order to verify that the bomb is working properly, I want to set the bomb off.

Scenario: Mastermind Lands on the main page and uses the default codes the bomb goes off.
  Given I am on the config page
  When I use the default codes
  Then I land on the Activate page
  When I enter '1234' to activate the bomb
  Then My bomb is activated and I have '3' attempts to disarm
  When I enter '0001' as my deact code '3' times
  Then My bomb goes off and everyone dies

Scenario: Mastermind Lands on the main page and uses the custom codes
  Given I am on the config page
  When I use '6789' as a act code, '9876' as a deact code
  Then I land on the Activate page
  When I enter '6789' to activate the bomb
  Then My bomb is activated and I have '3' attempts to disarm
  When I enter '0001' as my deact code '3' times
  Then My bomb goes off and everyone dies
