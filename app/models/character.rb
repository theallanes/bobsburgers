class Character < ApplicationRecord
  belongs_to :actor
  has_many :character_episodes
  has_many :episodes, through: :character_episodes

  validates :name, :gender, presence: true
  validates :name, length: {maximum: 100}

  def self.search(search)
    if search
      character = Character.where('name LIKE ?', "%#{search}%")
      if character
        self.where(id: character)
      else
        @characters = Character.all
      end
    else
      @characters = Character.all
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :search)
  end
end
