module AgentRole
  extend ActiveSupport::Concern

  included do
    has_one :agent, as: :role, dependent: :destroy

    after_save :setup_agent
  end

  private

  def setup_agent
    agent = Agent.create(name: self.name, role: self)
    raise ActiveRecord::RecordInvalid.new(self) unless agent.persisted?
  end
end