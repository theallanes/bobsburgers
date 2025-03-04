class Character < ApplicationRecord
  belongs_to :actor
  has_many :episodes, through: :character_episodes
end
