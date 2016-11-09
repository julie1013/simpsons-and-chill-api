class AddRatingToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :rating, :integer
  end
end
