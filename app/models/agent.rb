class Agent < ApplicationRecord
  ATTRIBUTES = %i[name].freeze

  belongs_to :role, polymorphic: true

  validates :name, presence: true
end
