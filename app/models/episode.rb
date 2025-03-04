class Episode < ApplicationRecord
  has_many :stores, :burgers
  has_many :characters, through: :character_episodes
end
