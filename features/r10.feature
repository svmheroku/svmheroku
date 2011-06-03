Feature: See r10 index action
  I want to see r10 index action.

  Scenario: Go to r10 index
    Given good_luck
    When I visit "/r10/index"
    Then I should see "About"
    And I should see "layouts/application.html.slim" in a comment
    And I should see "layouts/_lhs_links.html.slim" in a comment
    And I should see "views/r10/index.html.slim" in a comment

  Scenario: Go to slash
    Given good_luck
    When I visit "/"
    Then I should see "About"
    And I should see "layouts/application.html.slim" in a comment
    And I should see "layouts/_lhs_links.html.slim" in a comment
    And I should see "views/r10/index.html.slim" in a comment

  Scenario: Add Rails-partial named lhs links
    Given good_luck
    When I visit "/"
    Then I should see "layouts/_lhs_links.html.slim" in a comment
    And I_should_see_lhs_links

  Scenario: The site needs a sitemap
    Given good_luck
    When I visit "/r10/site_map"
    Then I should see "Site Map"
    And the_response_header_should_show_page_is_cached



