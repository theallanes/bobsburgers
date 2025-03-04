class CreateStores < ActiveRecord::Migration[8.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.references :episode, null: false, foreign_key: true

      t.timestamps
    end
  end
end
