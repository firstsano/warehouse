require 'rails_helper'

RSpec.describe Storage, type: :model do
  describe "validations" do
    subject { create :storage }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
