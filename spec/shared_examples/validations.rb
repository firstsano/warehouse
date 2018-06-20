RSpec.shared_examples "has simple unique validation" do |attributes, factory|
  attributes.each do |attribute|
    it "should validate uniqueness of #{attribute}" do
      duplicate = build factory, attribute => subject.send(attribute)
      expect(duplicate).not_to be_valid
    end
  end
end