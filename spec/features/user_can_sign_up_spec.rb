require 'rails_helper'

feature 'user can sign up' do
  scenario 'successfully' do
    visit new_user_path

    expect(User.count).to eq 0

    save_and_open_page
    fill_in "email", with: "test@test.com"
    fill_in "password", with: "password"
    fill_in "password_confirmation", with: "password"

    expect(current_path).to eq "/"
    expect(User.count).to eq 1
  end
end
