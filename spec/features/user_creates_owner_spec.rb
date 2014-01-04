require 'spec_helper'

feature 'User creates owner entry', %q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners

  Acceptance Criteria:

 * I must specify a first name, last name, and email address
 * I can optionally specify a company name
 * If I do not specify the required information, I am presented with errors
 * If I specify the required information, the owner is recorded and I am redirected to enter another new owner
}do

  scenario 'with valid attributes' do
    first_name = "Vinnie"
    last_name = "Jones"
    email = "vinnie@test.com"
    company = "someCompany"

    visit root_path
    click_on "Add Owner"

    fill_in "First name", with: first_name
    fill_in "Last name", with: last_name
    fill_in "Email", with: email
    fill_in "Company", with: company

    click_on "Create Owner"
    expect(page).to have_content("Owner was saved successfully.")
    expect(page).to have_content("Back to Property Management")
    expect(page).to have_content("Edit")
  end

  scenario 'without valid attributes' do
    visit root_path
    click_on "Add Owner"
    click_on "Create Owner"

    expect(page).to have_content("First name can't be blank")
    expect(page).to have_content("Last name can't be blank")
    expect(page).to have_content("Email can't be blank")


  end
end
