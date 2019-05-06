require 'rails_helper.rb'

feature"Member creates a club" do
    scenario "Member successfully navigates to the clubs page from the home page" do
        visit welcome_index_path
        expect(page).to have_content("NINER INTERACT")
        click_link "Clubs"
        expect(page).to have_content("Name")
        expect(page).to have_content("Contact")
    end
    
    scenario "Member successfully creates a club" do
        visit welcome_index_path
        click_link "Clubs"
        #find_button('New Club', disabled: true).click
        #expect(page).to have_content("New Club")
        #expect(page).to have_content("Name")
        #enter data into fields
    end
end