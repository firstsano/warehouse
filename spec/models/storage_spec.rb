require_relative 'models_helper'

RSpec.describe Storage, type: :model do
  describe "validations" do
    subject { create :storage }
    it { is_expected.to validate_presence_of(:name) }

    it_behaves_like "has simple unique validation", %i[name], :storage
  end

  it_should_behave_like "agent", :storage
end
