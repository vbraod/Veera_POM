Given(/^User is in Google Search page$/) do
  visit (SearchPage)
end

When(/^User enter keyword (.*) in search edit box$/) do |arg|
  on(SearchPage).enter_Search_Criteria(arg)
end

Then(/^Google provide all the links for (.*)$/) do |arg|
  on(SearchPage).search_Action
  fail unless on(SearchPage).verify_Result(arg)
  if on(SearchPage).verify_Result(arg) then
    puts "test is pass"
  else
    puts "test is fail"
  end
end

And(/^Capture all the links$/) do
  on(SearchPage).get_all_link_names
end