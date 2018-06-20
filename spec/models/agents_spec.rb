require_relative 'models_helper'

RSpec.describe Agent, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end
end