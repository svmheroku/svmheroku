# 
# site_map_steps.rb
# 

Then /^I_should_see_forex_predictions/ do
  ndoc = Nokogiri::HTML page.html
  fx_links = ndoc.xpath("//a[contains(@href,'fx')]")
  fx_links.size.should == 3
  fx_links.map{|fl| fl.inner_html}.sort.should == ["__Forex Predictions", "____New Forex Predictions", "____Past Forex Predictions"]
  fx_links.map{|fl| fl.attributes["href"].value}.sort.should == ["/fx_new", "/fx_past", "/predictions/fx"]
end
