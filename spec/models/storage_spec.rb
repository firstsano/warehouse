require_relative 'models_helper'

RSpec.describe Storage, type: :model do
  describe "validations" do
    subject { create :storage }
    it { is_expected.to validate_presence_of(:name) }

    it_behaves_like "has simple unique validation", %i[name], :storage
  end

  it_should_behave_like "agent", :storage

  describe "class methods" do
    subject { described_class }

    describe "::default_storage" do
      it { is_expected.to respond_to :default_storage }
      its(:default_storage) { is_expected.to be_an_instance_of Storage }
    end
  end
end
