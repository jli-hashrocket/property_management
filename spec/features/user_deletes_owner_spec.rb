require 'spec_helper'

feature 'User deletes owner', %q{
  "As a real estate agent
  I want to delete an owner
  So that I can remove inactive owners"
} do

  # scenario 'user choses owner to edit' do
  #     owner = FactoryGirl.create(:owner)
  #     visit root_path
  #     click_on 'Edit'
  # end

  # scenario 'user choses owner to remove' do
  #     owner = FactoryGirl.create(:owner)
  #     visit root_path
  #     click_on 'Delete'
  #     expect(page).to_not have_content(owner.last_name)
  #     expect(page).to_not have_content(owner.first_name)
  #     expect(page).to_not have_content(owner.email)
  # end
end
