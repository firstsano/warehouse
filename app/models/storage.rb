class Storage < ApplicationRecord
  include AgentRole

  validates :name, presence: true, uniqueness: true
end
