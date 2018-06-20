require_relative 'models_helper'

RSpec.describe Abonent, type: :model do
  describe "validations" do
    subject { create :abonent }

    context "presence" do
      %i[name login bill_account profile_account].each do |attribute|
        it { is_expected.to validate_presence_of attribute }
      end
    end

    it_behaves_like "has simple unique validation", %i[login bill_account profile_account], :abonent
  end

  it_should_behave_like "agent", :abonent
end
