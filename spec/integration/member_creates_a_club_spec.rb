require 'rails_helper.rb'

feature"Member creates a club" do
    scenario "Member successfully navigates to the clubs page from the home page" do
        visit welcome_index_path
        expect(page).to have_content("NINER INTERACT")
        click_link "Clubs"
        expect(page).to have_content("Listing Clubs")
    end
    
    scenario "Member successfully creates a club" do
        visit welcome_index_path
        click_link "Clubs"
        click_link "New Club"
        expect(page).to have_content("New Club")
        expect(page).to have_content("Name")
        fill_in 'club_name', with: "RSpec name"
        fill_in 'club_description', with: "RSpec description"
        fill_in 'club_contact', with: "RSpec contact"
        click_button "Create Club"
        expect(page).to have_content("RSpec name")
    end
end