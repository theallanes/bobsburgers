class Burger < ApplicationRecord
  belongs_to :episode

  validates :burger_name, :price, presence: true
  validates :burger_name, uniqueness: true
end
