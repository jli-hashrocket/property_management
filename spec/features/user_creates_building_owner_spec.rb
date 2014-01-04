# require 'spec_helper'

# feature 'User creates building owner entry', %q{
#   As a real estate associate
#   I want to record a building owner
#   So that I can keep track of our relationships with owners

#   Acceptance Criteria:

#   *I must specify a first name, last name, and email address
#   *I can optionally specify a company name
#   *If I do not specify the required information, I am presented with errors
#   *If I specify the required information, the owner is recorded and I am redirected to enter another new owner
# }do
#   context 'with valid attributes' do
#     it 'creates a new building manager' do
#       first_name = "Jack"
#       last_name = "Johnson"
#       email = "jjohnson@gmail.com"
#       company = "SomeCompany"

#       visit root_path
#       click_on "Add Owner"

#       # fill_in "First name", with: first_name
#       # fill_in "Last name", with: last_name
#       # fill_in "email", with: email
#       # fill_in "company" with: company

#       # click_on "Create Owner"
#       # expect(page).to have_content("was successfully created.")
#     end
#   end
# end

