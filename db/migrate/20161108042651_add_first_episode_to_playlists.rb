class AddFirstEpisodeToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :first_episode, :string
  end
end
