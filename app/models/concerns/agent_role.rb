module AgentRole
  extend ActiveSupport::Concern

  included do
    include Import['agent_interface.common_attributes']

    has_one :agent, as: :role, dependent: :destroy

    validates :agent, presence: true
    validates_associated :agent

    before_validation :build_associated_agent, if: :new_record?
  end

  private

  def build_associated_agent
    associated_attributes = common_attributes.map do |attribute|
      role_attribute = "agent_#{attribute}"
      [attribute, send(role_attribute)]
    end
    build_agent(Hash[associated_attributes])
  end
end
