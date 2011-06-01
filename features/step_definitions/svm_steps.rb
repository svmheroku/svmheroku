# 
# svm_steps.rb
# 

Given /^good_luck$/ do
  true
end

When /^I_follow_r(\d+)_index$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I_should_see_index\.html\.erb$/ do
  pending # express the regexp above with the code you wish you had
end

And /^debug$/ do
  debugger
  true
end

Then /^(?:|I )should see "([^"]*)" in a comment$/ do |text|
  page.html =~ Regexp.new(Regexp.escape(text))
end

