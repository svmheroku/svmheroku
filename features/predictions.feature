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

  Scenario: Visit US Stock Predictions
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    And I follow "US Stocks"
    Then I should see "Results Of Past US Stock Predictions"
    And  I should see "New US Stock Predictions"
    And  I should see "Site Map>Predictions> US Stocks"
    And I_should_see_url "/predictions/us_stk"
    And the_response_header_should_show_page_is_cached

  Scenario: Visit Past US Stock Predictions
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    And I follow "US Stocks"
    And I follow "Results Of Past US Stock Predictions"
    Then I should see "Results Of Past US Stock Predictions"
    And I should see "Week: 2011-03-14 Through 2011-03-18"
    And I should see "Week: 2011-05-31 Through 2011-06-03"
    And I_should_see_url "/us_stk_past"
    And the_response_header_should_show_page_is_cached

  Scenario: Visit us_stk_past Week: 2011-04-04 Through 2011-04-08
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    And I follow "US Stocks"
    And I follow "Results Of Past US Stock Predictions"
    And I follow "Week: 2011-04-04 Through 2011-04-08"
    And I_should_see_url "/us_stk_past/us_stk_past_wk2011_04_04"
    And the_response_header_should_show_page_is_cached

  Scenario: Visit us_stk_new
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    And I follow "US Stocks"
    And I follow "New US Stock Predictions"
    And I_should_see_url "/us_stk_new"
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

  Scenario: Visit Week: 2011-01-30 Through 2011-02-04
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    And I follow "Forex Predictions"
    And I follow "Past Forex Predictions"
    And I follow "Week: 2011-01-30 Through 2011-02-04"
    Then I should see "Week of: 2011_01_30"
    And I should see "aud_jpy"
    And I should see "usd_jpy"
    And I should see "Note:"
    And I should see "DanBot"
    And I_should_see_url "/fx_past/fx_past_wk2011_01_30"
    And I should see "layouts/column_help.html.slim" in a comment
    And the_response_header_should_show_page_is_cached

  Scenario: Visit Week: 2011-05-29 Through 2011-06-03
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    And I follow "Forex Predictions"
    And I follow "Past Forex Predictions"
    And I follow "Week: 2011-05-29 Through 2011-06-03"
    Then I should see "Week of: 2011_05_29"
    And I should see "aud_jpy"
    And I should see "usd_jpy"
    And I should see "Note:"
    And I should see "DanBot"
    And I_should_see_url "/fx_past/fx_past_wk2011_05_29"
    And the_response_header_should_show_page_is_cached

  Scenario: Visit New Forex Predictions
    Given good_luck
    When I visit "/"
    And I follow "Predictions"
    And I follow "Forex Predictions"
    And I follow "New Forex Predictions"
    Then I should see "New Forex Predictions"
    And  I should see "GMT Time"
    And  I should see "Currency-Pair"
    And  I should see "you probably have JavaScript turned off"
    And I_should_see_url "/fx_new"
    And the_response_header_should_show_page_is_cached
