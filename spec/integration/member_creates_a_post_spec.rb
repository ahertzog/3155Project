require 'rails_helper.rb'

feature"Member creates a post" do
    scenario "Member successfully navigates to the posts page from the home page" do
        visit welcome_index_path
        expect(page).to have_content("NINER INTERACT")
        click_link "Posts"
        expect(page).to have_content("Title")
    end
    
    scenario "Member navigates from the posts page to the clubs page" do
        visit welcome_index_path
        expect(page).to have_content("NINER INTERACT")
        click_link "Posts"
        expect(page).to have_content("Title")
        click_link "Select Club to Create Post"
        expect(page).to have_content("Listing Clubs")
    end
end