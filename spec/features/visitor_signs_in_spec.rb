require 'rails_helper'

feature "Visitor signs in" do
  scenario "with valid credentials" do
    FactoryGirl.create(:user, email: "foo@bar.com",
                              password: "pwd12345",
                              password_confirmation: "pwd12345" )

    visit root_path
    click_link "Login"
    fill_in "Email", with: "foo@bar.com"
    fill_in "Password", with: "pwd12345"
    click_button "Log in"

    expect(page).to have_content "Signed in successfully."
    expect(page).to have_content "Logout"
  end
end
