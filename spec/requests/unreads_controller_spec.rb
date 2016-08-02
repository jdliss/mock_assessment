require 'rails_helper'

RSpec.describe Api::V1::UnreadsController, type: :request do
  it "updates link status to unread" do
    Link.create(title: "new link", url: "https://google.com", read: true)

    patch mark_unread_path, format: :json, id: Link.first.id

    expect(Link.first.read).to eq false
  end
end
