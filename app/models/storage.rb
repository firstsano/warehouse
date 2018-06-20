class Storage < ApplicationRecord
  include AgentRole

  validates :name, presence: true, uniqueness: true

  def agent_name
    name
  end
end
