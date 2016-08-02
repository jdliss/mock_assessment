require 'rails_helper'

RSpec.describe Api::V1::ReadsController, type: :request do
  it "updates link status to read" do
    Link.create(title: "new link", url: "https://google.com")

    patch mark_read_path, format: :json, id: Link.first.id

    expect(Link.first.read).to eq true
  end
end
