require 'rails_helper.rb'

feature"Member creates a meeting" do
    scenario "Member successfully navigates to the clubs page from the home page" do
        visit welcome_index_path
        expect(page).to have_content("NINER INTERACT")
        click_link "Clubs"
        expect(page).to have_content("Name")
    end
    
    scenario "Member successfully creates a meeting" do
        visit welcome_index_path
        click_link "Clubs"
=begin
        click_link "Show"
        expect(page).to have_content("Add a meeting:")
        fill_in 'meeting_purpose', with: "RSpec purpose"
        fill_in 'meeting_timeStamp', with: "RSpec timeStamp"
        fill_in 'meeting_location', with: "RSpec location"
=end
    end
end