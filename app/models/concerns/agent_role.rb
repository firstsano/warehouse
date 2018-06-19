module AgentRole
  extend ActiveSupport::Concern

  included do
    has_one :agent, as: :role, dependent: :destroy

    validates :agent, presence: true
    validates_associated :agent

    before_validation :build_associated_agent, if: :new_record?
  end

  private

  def build_associated_agent
    self.build_agent(name: self.name)
  end
end