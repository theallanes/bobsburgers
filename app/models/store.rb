class Store < ApplicationRecord
  belongs_to :episode

  has_many :stores, :characters
end
