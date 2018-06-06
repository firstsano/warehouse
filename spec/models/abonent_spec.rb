require 'rails_helper'

RSpec.describe Abonent, type: :model do
  describe "validations" do
    subject { create :abonent }

    context "presence" do
      %i{ name login bill_account profile_account }.each do |attribute|
        it { is_expected.to validate_presence_of attribute }
      end
    end

    context "uniqueness" do
      %i{ login bill_account profile_account }.each do |attribute|
        it { is_expected.to validate_uniqueness_of attribute }
      end
    end
  end
end
