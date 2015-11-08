require 'rails_helper'

feature "User completes todo" do
  scenario "succesfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy Milk"
    click_on "Submit"

    click_on "Mark Complete"
    expect(page).to have_css '.todos li.completed', text: "Buy Milk"
  end
end
