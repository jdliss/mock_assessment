require 'rails_helper'

RSpec.describe Api::V1::UnreadsController do
  it "updates link status to unread" do
    Link.create(title: "new link", url: "https://google.com", read: true)

    patch "/api/v1/unreads", format: :json, id: Link.first.id

    expect(Link.first.status).to eq false
  end
end
