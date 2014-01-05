require 'spec_helper'

feature 'User assigns owner to building', %q{
  As a real estate associate
  I want to correlate an owner with buildings
  So that I can refer back to pertinent information

  Acceptance Criteria:

  * When recording a building, I want to optionally associate the building with its rightful owner.
  * If I delete an owner, the owner and its primary key should no longer be associated with any properties.

}do

  scenario 'selects an owner for building' do
      address = "111 some street"
      city = "cambridge"
      zip = 02145
      description = "New building"
      Owner.create!(last_name: "Wayne", first_name: "Bruce", email: "batman@batcave.com")


      visit root_path
      click_on "Add Building"
      fill_in "Address", with: address
      fill_in "City", with: city
      select "DC", from: "State"
      fill_in "Zip", with: zip
      fill_in "Description", with: description
      select "Wayne, Bruce", :from => "Owner"
      click_on "Create Building"

      expect(page).to have_content("Building was saved successfully")
      expect(page).to have_content("Back to Property Management")
      expect(page).to have_content("Edit")

      click_on "Back to Property Management"
      expect(page).to have_content("Bruce Wayne")
  end
end
