# 
# site_map_steps.rb
# 

Then /^I_should_see_forex_predictions$/ do
  ndoc_fx = Nokogiri::HTML page.html
  fx_links = ndoc_fx.xpath("//a[contains(@href,'fx')]")
  fx_links.size.should == 3
  fx_links.map{|fl| fl.inner_html}.sort.should == ["__Forex Predictions", "____New Forex Predictions", "____Past Forex Predictions"]
  fx_links.map{|fl| fl.attributes["href"].value}.sort.should == ["/fx_new", "/fx_past", "/predictions/fx"]
end

Then /^I_should_see_us_stock_predictions$/ do
  ndoc_us_stk = Nokogiri::HTML page.html
  us_stk_links = ndoc_us_stk.xpath("//a[contains(@href,'us_stk')]")
  us_stk_links.size.should == 3
  us_stk_links.map{|fl| fl.inner_html}.sort.should == ["__US Stocks", "____New US Stock Predictions", "____Past US Stock Predictions"]
  us_stk_links.map{|fl| fl.attributes["href"].value}.sort.should == ["/predictions/us_stk", "/us_stk_new", "/us_stk_past"]
end

Then /^I_should_count (\d+) links$/ do |nl|
  ndoc_nl = Nokogiri::HTML page.html
  the_links = ndoc_nl.css("a")
  the_links.size.should == nl.to_i
end
