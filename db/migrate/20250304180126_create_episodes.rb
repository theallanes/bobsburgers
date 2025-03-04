class CreateEpisodes < ActiveRecord::Migration[8.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.string :air_date
      t.integer :season
      t.integer :episode_number

      t.timestamps
    end
  end
end
