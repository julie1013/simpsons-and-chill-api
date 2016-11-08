class AddSecondEpisodeToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :second_episode, :string
  end
end
