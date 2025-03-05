class AddUrlToEpisodes < ActiveRecord::Migration[8.0]
  def change
    add_column(:episodes, :url, :string)
  end
end
