class Character < ApplicationRecord
  belongs_to :actor
  has_many :character_episodes
  has_many :episodes, through: :character_episodes

  validates :name, :gender, presence: true
  validates :age, numericality: { only_integer: true }
end
