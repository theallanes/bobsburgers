class Actor < ApplicationRecord
  has_many :characters

  validates :actor_name, presence: true
end
