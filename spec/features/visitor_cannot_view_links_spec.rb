require 'rails_helper'

feature 'visitor cannot view links' do
  scenario 'successfully' do
    visit root_path

    expect(current_path).to eq "/login"
    expect(page).to_not have_content "ThoughtBox"
  end
end
