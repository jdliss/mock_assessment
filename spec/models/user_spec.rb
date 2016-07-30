require 'rails_helper'

RSpec.describe :User, type: :model do
  describe "validates" do
    subject { User.new(email: "email@email.com")}
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_uniqueness_of :email }
  end
end
