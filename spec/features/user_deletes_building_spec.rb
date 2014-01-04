require 'spec_helper'

feature 'User deletes building', %q{
  "As a real estate agent
  I want to delete a building
  So that I can remove unavailable buildings"
} do
  scenario 'user choses building to remove' do
      # Inquiry.delete_all
      building = FactoryGirl.create(:building)
      visit root_path
      click_on 'Delete'
      expect(page).to_not have_content(building.address)
  end
end
