class AddFifthEpisodeToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :fifth_episode, :string
  end
end
