class Agent < ApplicationRecord
  belongs_to :role, polymorphic: true

  validates :name, presence: true
end
