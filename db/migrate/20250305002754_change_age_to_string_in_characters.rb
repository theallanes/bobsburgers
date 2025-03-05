class ChangeAgeToStringInCharacters < ActiveRecord::Migration[8.0]
  def change
    change_column(:characters, :age, :string)
  end
end
