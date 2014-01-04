require 'spec_helper'

feature 'User creates building entry', %q{
  As a real estate associate
  I want to record a building
  So that I can refer back to pertinent information

  Acceptance Criteria:

  *I must specify a street address, city, state, and postal code
  *Only US states can be specified
  *I can optionally specify a description of the building
  *If I enter all of the required information in the required format, the building is recorded.
  *If I do not specify all of the required information in the required formats, the building is not recorded and I am presented with errors
  *Upon successfully creating a building, I am redirected so that I can record another building.
}do

  context 'with valid attributes' do
    it 'create new building entry' do
      address = "111 some street"
      city = "cambridge"
      zip = 02145
      description = "New building"

      visit root_path
      click_on "Add Building"
      fill_in "Address", with: address
      fill_in "City", with: city
      select "DC", from: "State"
      fill_in "Zip", with: zip
      fill_in "Description", with: description
      click_on "Create Building"

      expect(page).to have_content("Building was saved successfully")
    end
  end

  context 'without valid attributes' do
    it 'does not create building entry' do
      visit root_path
      click_on "Add Building"
      click_on "Create Building"
      expect(page).to have_content("Address can't be blank")
      expect(page).to have_content("City can't be blank")
      expect(page).to have_content("Zip can't be blank")
    end
  end

end
