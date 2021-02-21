Given(/^User is in Google Search page$/) do
  visit (SearchPage)
end

When(/^User enter keyword (.*) in search edit box$/) do |arg|
  on(SearchPage).enterSearchCriteria(arg)
end

Then(/^Google provide all the links for (.*)$/) do |arg|
  on(SearchPage).searchAction
  fail unless on(SearchPage).verifyResult(arg)
end

