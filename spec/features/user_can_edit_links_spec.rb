require 'rails_helper'

feature 'user can edit links' do
  scenario 'successfully' do
    User.create(email: "test@test.com", password: "password", password_confirmation: "password")
    Link.create(user_id: User.first.id, title: "some title", url: "https://google.com")
    visit login_path

    fill_in "email", with: "test@test.com"
    fill_in "password", with: "password"
    click_on "Submit"

    expect(current_path).to eq root_path

    click_on "edit"

    expect(current_path).to eq edit_link_path(Link.first.id)

    fill_in "title", with: "lets goooooo"
    fill_in "url", with: "https://ayyyyyyyyyy.com"
    click_on "Submit"

    expect(current_path).to eq root_path
    expect(page).to have_link "lets goooooo"
    expect(find_link('lets goooooo')[:href]).to eq 'https://ayyyyyyyyyy.com'
  end
end
