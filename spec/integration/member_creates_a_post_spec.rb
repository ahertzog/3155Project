require 'rails_helper.rb'

feature"Member creates a post" do
    scenario "Member successfully navigates to the posts page from the home page" do
        visit welcome_index_path
        expect(page).to have_content("NINER INTERACT")
        click_link "Posts"
        expect(page).to have_content("Title")
    end
    
    scenario "Member successfully creates a blog" do
        visit welcome_index_path
        click_link "Posts"
        
    end
end