require 'rails_helper'

feature "Visitor signs in" do

  before do
    FactoryGirl.create(:user, email: "foo@bar.com",
                              password: "pwd12345",
                              password_confirmation: "pwd12345" )
    visit root_path
    click_link "Login"
  end

  scenario "with valid credentials" do

    fill_in "Email", with: "foo@bar.com"
    fill_in "Password", with: "pwd12345"
    click_button "Log in"

    expect(page).to have_content "Signed in successfully."
    expect(page).to have_content "Logout"
  end

  scenario "with invalid credentials" do

    fill_in "Email", with: "notauser@somewhere.com"
    fill_in "Password", with: "pwd45672"
    click_button "Log in"

    expect(page).to have_content "Invalid email or password."
    expect(page).to have_content "Login"
  end
end
