RSpec.shared_examples "agent" do |factory|
  describe "constructor" do
    context "on successful creation" do
      it "should create agent" do
        expect { create factory }.to change { Agent.count }.by(1)
      end

      it "should assign agent" do
        resource = create factory
        expect(resource.agent).to eq(Agent.last)
      end
    end
  end
end
