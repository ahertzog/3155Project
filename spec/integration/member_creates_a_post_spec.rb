require 'rails_helper.rb'

feature"Member creates a blog" do
    scenario "Member successfully navigates to the posts page from the home page" do
        visit welcome_index_path
        expect(page).to have_content("NINER INTERACT")
        click_link "Posts"
        expect(page).to have_content("Listing Posts")
    end
    
    scenario "Member successfully creates a post" do
        visit welcome_index_path
        click_link "Posts"
        click_link "Select Club to Create Post"
        expect(page).to have_content("Listing Clubs")
        #click on show in table
        #fill_in 'title', with: "This is created by RSpec"
    end
end