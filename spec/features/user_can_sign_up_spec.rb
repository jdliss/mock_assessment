require 'rails_helper'

feature 'user can sign up' do
  scenario 'successfully' do
    visit new_user_path

    expect(User.count).to eq 0

    fill_in "user[email]", with: "test@test.com"
    fill_in "user[password]", with: "password"
    fill_in "user[password_confirmation]", with: "password"
    click_on "Submit"

    expect(current_path).to eq "/"
    expect(User.count).to eq 1
  end
end
