require 'rails_helper.rb'

feature"Member edits a club" do
    scenario "Member successfully navigates to the clubs page from the home page" do
        visit welcome_index_path
        expect(page).to have_content("NINER INTERACT")
        click_link "Clubs"
        expect(page).to have_content("Name")
        expect(page).to have_content("Contact")
    end
    scenario "Member successfully edits a club" do
        visit clubs_path
        expect(page).to have_content("Name")
        find('//wholeTable/Edit').click
        fill_in "Name", with: "test number 5 updated"
        fill_in "Description", with: "text for test 5 updated"
        click_button "Save Club"
        expect(page).to have_content "test number 5 updated"
        expect(page).to have_content "text for test 5 updated"
    end
end
