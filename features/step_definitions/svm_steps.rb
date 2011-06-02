# 
# svm_steps.rb
# 

Given /^good_luck$/ do
  assert true
end

And /^debug$/ do
  debugger
  assert true
end

Then /^(?:|I )should see "([^"]*)" in a comment$/ do |text|
  assert false unless page.html =~ Regexp.new(Regexp.escape(text))
end

Then /^smtp$/ do
  # smtp is show me the page
  save_and_open_page
  assert true
end


When /^I visit "([^"]*)"$/ do |path|
  visit path
end

Then /^I_should_see_lhs_links$/ do
  ndoc = Nokogiri::HTML page.html
  my_links = ndoc.css("a")
  ml_html_a = my_links.map{|ml|ml.inner_html}
  ml_html_a.sort.should == ["About", "Blog", "Books", "Contact", "Facebook Page", "Forum", "Glossary", "Leadership Team", "Predictions", "Site Map", "Terms of Service", "Twitter Feed", "svm.heroku.com"]
end
