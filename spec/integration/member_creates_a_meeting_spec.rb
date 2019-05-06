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
        click_link "Show"
        expect(page).to have_content("Add a meeting:")
        fill_in 'blog_title', with: "RSpec purpose"
        fill_in 'blog_title', with: "RSpec timeStamp"
        fill_in 'blog_title', with: "RSpec location"
    end
end