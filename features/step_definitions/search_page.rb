Given(/^User is in Google Search page$/) do
  visit (SearchPage)
end

When(/^User enter keyword (.*) in search edit box$/) do |arg|
  on(SearchPage).enterSearchCriteria(arg)
end

Then(/^Google provide all the links for (.*)$/) do |arg|
  on(SearchPage).searchAction
  fail unless on(SearchPage).verifyResult(arg)
  if on(SearchPage).verifyResult(arg) then
    puts "test is pass"
  else
    puts "test is fail"
  end
end

And(/^Capture all the links$/) do
  on(SearchPage).get_all_link_names
end