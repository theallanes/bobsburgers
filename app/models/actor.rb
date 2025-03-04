class Actor < ApplicationRecord
  has_many :characters

  validates :actor_name, presence: true, length: { minimum: 2 }
end
