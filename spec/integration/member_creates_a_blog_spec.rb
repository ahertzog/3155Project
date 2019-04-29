require 'rails_helper.rb'

feature"Member creates a blog" do
    scenario "Member successfully navigates to the blogs page from the home page" do
        visit welcome_index_path
        expect(page).to have_content("NINER INTERACT")
        click_link "Blogs"
        expect(page).to have_content("Blog Title")
    end
    
    scenario "Member successfully creates a blog" do
        visit welcome_index_path
        click_link "Blogs"
        click_link "New Blog"
        expect(page).to have_content("New Post")
        fill_in 'blog_title', with: "This is created by RSpec"
    end
end