class Abonent < ApplicationRecord
  include AgentRole

  validates :name, presence: true
  validates :login, presence: true, uniqueness: true
  validates :bill_account, presence: true, uniqueness: true
  validates :profile_account, presence: true, uniqueness: true

  def agent_name
    "#{name} - #{login}"
  end
end
