Feature: See predictions
  I want to see predictions

  Scenario: Visit Predictions
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    Then I should see "Forex Predictions"
    And I should see "Site Map> Predictions"
    And I_should_see_url "/predictions"
    And the_response_header_should_show_page_is_cached

  Scenario: Visit Forex Predictions
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    And I follow "Forex Predictions"
    Then I should see "Results Of Past Forex Predictions"
    And  I should see "Site Map>Predictions> Forex"
    And I_should_see_url "/predictions/fx"
    And the_response_header_should_show_page_is_cached

  Scenario: Visit Past Forex Predictions
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    And I follow "Forex Predictions"
    And I follow "Past Forex Predictions"
    Then I should see "Past Forex Predictions"
    And I_should_see_url "/fx_past"
    And the_response_header_should_show_page_is_cached


