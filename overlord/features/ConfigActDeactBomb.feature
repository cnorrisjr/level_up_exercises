Feature: Evil mastermind wants to config a bomb,
activate the bomb, and deactivate the bomb

Scenario: Mastermind Lands on the main page and uses the default codes deactivates 1st time
  Given I am on the home page
  When I use the default codes
  Then I land on the Activate page
  When I enter '1234' to activate the bomb
  Then My bomb is activiated and I have '3' attempts to disarm
  When I enter '0000' as my deactivation code
  Then I the bomb is deactivated and I can config a new one

Scenario: Mastermind Lands on the main page and uses the default codes deactivates 2nd time
  Given I am on the home page
  When I use the default codes
  Then I land on the Activate page
  When I enter '1234' to activate the bomb
  Then My bomb is activiated and I have '3' attempts to disarm
  When I enter '0001' as my deactivation code
  Then My bomb is activiated and I have '2' attempts to disarm
  When I enter '0000' as my deactivation code
  Then I the bomb is deactivated and I can config a new one

Scenario: Mastermind Lands on the main page and uses the default codes deactivates 3rd time
  Given I am on the home page
  When I use the default codes
  Then I land on the Activate page
  When I enter '1234' to activate the bomb
  Then My bomb is activiated and I have '3' attempts to disarm
  When I enter '0001' as my deactivation code
  Then My bomb is activiated and I have '2' attempts to disarm
  When I enter '0001' as my deactivation code
  Then My bomb is activiated and I have '1' attempts to disarm
  When I enter '0000' as my deactivation code
  Then I the bomb is deactivated and I can config a new one

Scenario: Mastermind Lands on the main page and uses the custom codes deactivates 1st time
  Given I am on the home page
  When I enter '6789' and '9876' into the bomb
  Then I land on the Activate page
  When I enter '6789' to activate the bomb
  Then My bomb is activiated and I have '3' attempts to disarm
  When I enter '9876' as my deactivation code
  Then I the bomb is deactivated and I can config a new one

Scenario: Mastermind Lands on the main page and uses the custom codes deactivates 2nd time
  Given I am on the home page
  When I enter '6789' and '9876' into the bomb
  Then I land on the Activate page
  When I enter '6789' to activate the bomb
  Then My bomb is activiated and I have '3' attempts to disarm
  When I enter '0001' as my deactivation code
  Then My bomb is activiated and I have '2' attempts to disarm
  When I enter '9876' as my deactivation code
  Then I the bomb is deactivated and I can config a new one

Scenario: Mastermind Lands on the main page and uses the custom codes deactivates 3rd time
  Given I am on the home page
  When I enter '6789' and '9876' into the bomb
  Then I land on the Activate page
  When I enter '6789' to activate the bomb
  Then My bomb is activiated and I have '3' attempts to disarm
  When I enter '0001' as my deactivation code
  Then My bomb is activiated and I have '2' attempts to disarm
  When I enter '0001' as my deactivation code
  Then My bomb is activiated and I have '1' attempts to disarm
  When I enter '9876' as my deactivation code
  Then I the bomb is deactivated and I can config a new one

