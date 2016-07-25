require 'rails_helper'

feature 'user can log in' do
  scenario 'successfully' do
    User.create(email: "test@test.com", password: "password", password_confirmation: "password")
    visit login_path

    fill_in "email", with: "test@test.com"
    fill_in "password", with: "password"
    click_on "Submit"

    expect(current_path).to eq "/"
    expect(page).to have_content "log out"
  end
end
