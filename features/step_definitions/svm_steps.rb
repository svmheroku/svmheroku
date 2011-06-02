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

