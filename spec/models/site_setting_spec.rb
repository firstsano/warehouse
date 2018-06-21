require_relative 'models_helper'

RSpec.describe SiteSetting, type: :model do
  describe "validations" do
    subject { create :site_setting }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
