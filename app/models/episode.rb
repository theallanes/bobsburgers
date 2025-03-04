class Episode < ApplicationRecord
  has_many :stores, :characters
end
