require_relative 'models_helper'

RSpec.describe Storage, type: :model do
  it_should_behave_like "agent", :storage

  describe "validations" do
    subject { create :storage }
    it { is_expected.to validate_presence_of(:name) }

    it_behaves_like "has simple unique validation", %i[name], :storage
  end

  describe "class methods" do
    subject { described_class }
    let(:settings) { double }

    describe "::default_storage" do
      it { is_expected.to respond_to :default_storage }

      it "should return an default storage from settings" do
        storages = create_list :storage, 5
        expected_default_storage = storages.last
        allow(settings).to receive(:default_storage_id).and_return expected_default_storage.id
        default_storage = subject.default_storage settings
        expect(default_storage).to eq expected_default_storage
      end
    end
  end
end
