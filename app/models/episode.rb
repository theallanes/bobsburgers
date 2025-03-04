class Episode < ApplicationRecord
  has_many :stores, :burgers
  has_many :characters, through: :character_episodes

  validates :title, :description, :air_date, :season, :episode_number, presence: true
  validates :season, :episode_number, numericality: { only_integer: true }
  validates :title, uniqueness: true
end
