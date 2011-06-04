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
  my_links.size.should == 13
  ml_html_a = my_links.map{|ml|ml.inner_html}
  ml_html_a.sort.should == ["About", "Blog", "Books", "Contact", "Facebook Page", "Forum", "Glossary", "Leadership Team", "Predictions", "Site Map", "Terms of Service", "Twitter Feed", "svm.heroku.com"]
  href_a = my_links.map{|l| l.attributes["href"].value}
  href_a.sort.should == ["/", "/predictions", "/r10/index", "/r10/site_map", "/r10/uc", "/r10/uc", "/r10/uc", "/r10/uc", "/r10/uc", "/r10/uc", "/r10/uc", "/r10/uc", "/r10/uc"]
end

Then /^I_should_see_url "([^"]*)"$/ do |uurl|
  # uurl is what I should see in the url bar.
  # I found current_path via debugger, then self.methods
  # uurl.should == page.current_path
  # Also I found it in the page object:
  uurl.should == page.current_path
end

Then /^the_response_header_should_show_page_is_cached$/ do
  # web developer shows this at the bottom of the information-tab-result.
  if page.response_headers["Cache-Control"] =~ /public/
    assert true
  else
    assert false,"Cache-Control in response_headers is not public."
  end
end

Then /^I_should_see_favicon$/ do
  rspns = get "/favicon.ico"
  rspns.content_length.should == 198
  rspns.content_type.should == "image/vnd.microsoft.icon"
  rspns.status.should == 200
  # I should maybe also compare a hash of the file.
end
