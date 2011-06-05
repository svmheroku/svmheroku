Feature: Visit site_map
  I want to visit /site_map

  Scenario: Visit site_map
    Given good_luck
    When I visit "/"
    And I follow "Site Map"
    Then I should see "Site Map"
    And I_should_see_url "/site_map"
    And the_response_header_should_show_page_is_cached

  Scenario: Study site_map links
    Given good_luck
    When I visit "/site_map"
    Then I_should_see_forex_predictions

