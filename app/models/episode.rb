class Episode < ApplicationRecord
  has_many :stores, :characters, :burgers
end
