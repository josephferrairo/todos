require 'rails_helper'

feature "User completes todo" do
  scenario "succesfully" do
    sign_in

    create_todo "Buy Milk"

    click_on "Mark Complete"
    click_on "Mark Incomplete"


    expect(page).not_to display_completed_todo "Buy Milk"
  end
end
