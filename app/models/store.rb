class Store < ApplicationRecord
  belongs_to :episode

  validates :store_name, presence: true, uniqueness: true
end
