Given(/^my input is "(.*?)"$/) do |input|
  @input = input
end

When(/^I parse the string$/) do
  @result = PeopleAndTitles::Parser.parse(@input)
end

Then(/^first name should be (.*?)$/) do |first_name|
  pending # express the regexp above with the code you wish you had
end

Then(/^middle name should be (.*?)$/) do |middle_name|
  pending # express the regexp above with the code you wish you had
end

Then(/^last name should be (.*?)$/) do |last_name|
  pending # express the regexp above with the code you wish you had
end

Then(/^suffix should be (.*?)$/) do |suffix|
  pending # express the regexp above with the code you wish you had
end

Then(/^prefix should be (.*?)$/) do |prefix|
  pending # express the regexp above with the code you wish you had
end
