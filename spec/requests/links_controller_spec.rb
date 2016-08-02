require 'rails_helper'

RSpec.describe LinksController, type: :request do
  it "it creates a link" do
    post links_path, format: :json,
         title: "new link",
         url: "http://google.com"

    expect(Link.count).to eq 1
  end

  it "updates a link" do
    Link.create(title: "new link", url: "http://google.com")

    patch "/links/#{Link.first.id}", format: :json,
          title: "newer link",
          url: "http://lelelel.com"

    expect(Link.first.title).to eq "newer link"
    expect(Link.first.url).to eq "http://lelelel.com"
  end
end
