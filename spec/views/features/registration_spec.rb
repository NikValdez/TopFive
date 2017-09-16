require 'rails_helper'

feature "User registers" do

  scenario "with valid details" do

    visit "/"

    click_link "Sign Up!"
    expect(current_path).to eq(new_user_registration_path)

    fill_in "Email", with: "tester@example.tld"
    fill_in "Password", with: "test-password"
    fill_in "Password confirmation", with: "test-password"
    click_button "Sign in"

    expect(current_path).to eq user_path(User.last)
    expect(page).to have_content('Welcome')
    
  end 
end
