require 'rails_helper'


RSpec.feature "Creating Authors" do 

  scenario "with valid inputs succeeds" do
    visit root_path

    click_link "Authors"
    click_link "Add new author"

    fill_in "First name", with: "Sue"
    fill_in "Last name", with: "Doe"

    click_button "Create Author"
    #Flash message
    expect(page).to have_content("Author has been created")
  end

  scenario "with an invalid input fails" do
    visit root_path

    click_link "Authors"
    click_link "Add new author"

    fill_in "First name", with: ""
    fill_in "Last name", with: ""

    click_button "Create Author"
    #Flash message
    expect(page).to have_content("Author has not been created")
  end
 
end

