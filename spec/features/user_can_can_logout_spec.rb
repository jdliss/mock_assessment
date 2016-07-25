require 'rails_helper'

feature 'user can log out' do
  scenario 'successfully' do
    User.create(email: "test@test.com", password: "password", password_confirmation: "password")
    visit login_path

    fill_in "email", with: "test@test.com"
    fill_in "password", with: "password"
    click_on "Submit"

    click_on "log out"
    expect(current_path).to eq "/login"
  end
end
