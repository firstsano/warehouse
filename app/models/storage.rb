class Storage < ApplicationRecord
  include AgentRole

  validates :name, presence: true, uniqueness: true

  def self.default_storage(settings = Setting)
    find settings.default_storage_id
  end

  def agent_name
    name
  end
end
