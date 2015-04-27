require 'rails_helper'

feature "Visitor signs in" do

  scenario "with valid info" do
    visit new_user_registration_path

    fill_in "Email",                 with: "foo@bar.com"
    fill_in "Password",              with: "pwd12345"
    fill_in "Password confirmation", with: "pwd12345"
    click_button "Sign up"

    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(page).to have_content "Logout"
  end
end
