require 'rails_helper'

RSpec.describe :Link, type: :model do
  describe "validates" do
    subject { Link.new(title: "new title", url: "https://google.com")}
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :url }
  end
end
