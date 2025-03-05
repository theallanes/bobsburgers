class ChangePriceToStringInBurgers < ActiveRecord::Migration[8.0]
  def change
    change_column(:burgers, :price, :string)
  end
end
