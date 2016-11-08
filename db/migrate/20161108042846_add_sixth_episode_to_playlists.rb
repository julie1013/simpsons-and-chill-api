class AddSixthEpisodeToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :sixth_episode, :string
  end
end
