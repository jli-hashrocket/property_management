require 'spec_helper'

feature 'User views all owners', %q{
  As a real estate associate
  I want to view all building owners
  So that I can check which owners are current

  Acceptance Criteria:

  * I must go to owners index page from Property Management index
  * I must click on Go to Owners
}do

  scenario 'goes to Owners index page' do
    owner = FactoryGirl.create(:owner)
    visit root_path
    click_on 'Go to Owners'

    expect(page).to have_content('Owners Listing')
    expect(page).to have_content(owner.first_name)
    expect(page).to have_content(owner.last_name)
    expect(page).to have_content(owner.email)
    expect(page).to have_content(owner.company)

  end
end
