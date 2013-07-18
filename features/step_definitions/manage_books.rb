When(/^I navigate to books page$/) do
  visit '/books'
end

Then(/^I should see a list of books$/) do
  page.should have_content('Indian Camp')
  page.should have_content('The Sun Also Rises')
end

When(/click on a "(.*?)" link$/) do |name|
  click_link name
end

When(/click on a "(.*?)" button$/) do |name|
  click_button name
end

Then(/^I should be redirected to a New Book page$/) do
  current_path.should == new_book_path
  page.should have_selector('input#book_title')
  page.should have_selector('input#book_available')
end

When(/^I enter "(.*?)" into "(.*?)" field$/) do |value, input|
  fill_in(input, with: value)
end

Then(/^I should see "(.*?)" book in a list$/) do |name|
  page.should have_content(name)
end

Then(/^I should be redirected to a Edit Book page$/) do
  page.should have_selector('input#book_title')
  page.should have_selector('input[value="Update Book"]')
end

When(/click on a first "(.*?)" link$/) do |name|
  first(:link, name).click
end

Then(/^I shouldn't see "(.*?)" any more$/) do |name|
  page.should_not have_content(name)
end