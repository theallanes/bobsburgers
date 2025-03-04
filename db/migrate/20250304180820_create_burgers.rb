class CreateBurgers < ActiveRecord::Migration[8.0]
  def change
    create_table :burgers do |t|
      t.string :burger_name
      t.integer :price
      t.references :episode, null: false, foreign_key: true

      t.timestamps
    end
  end
end
