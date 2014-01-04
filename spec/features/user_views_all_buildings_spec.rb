require 'spec_helper'

feature 'User views all building entries', %q{
  As a user,
  I want to see all buildings,
  So that I can see building information

  Acceptance Criteria:
  *I must go to the index page
} do

  scenario 'goes to the index page' do
    building = FactoryGirl.create(:building)

    visit root_path
    expect(page).to have_content("Add Building")
    expect(page).to have_content(building.address)
    expect(page).to have_content(building.city)
    expect(page).to have_content(building.state)
    expect(page).to have_content(building.zip)
    expect(page).to have_content(building.description)
  end

end
