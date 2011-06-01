Feature: See r10 index action
  I want to see r10 index action.

  Scenario: Follow r10 index
    Given good_luck
    When I go to r10_index
    Then I should see "index"
