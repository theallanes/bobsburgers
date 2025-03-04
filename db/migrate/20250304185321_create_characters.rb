class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :occupation
      t.references :actor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
