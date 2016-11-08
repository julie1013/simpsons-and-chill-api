class AddThirdEpisodeToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :third_episode, :string
  end
end
