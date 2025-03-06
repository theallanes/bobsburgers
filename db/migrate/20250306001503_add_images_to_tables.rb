class AddImagesToTables < ActiveRecord::Migration[8.0]
  def change
    add_column(:characters, :image, :string)
    add_column(:episodes, :image, :string)
    add_column(:stores, :image, :string)
  end
end
