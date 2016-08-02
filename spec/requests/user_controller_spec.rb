require 'rails_helper'

RSpec.describe UsersController, type: :request do
  it "it creates a user" do
    post users_path, format: :json, user: {
           email: "email@email.com",
           password: "password",
           password_confirmation: "password"
         }

    expect(User.count).to eq 1
  end
end
