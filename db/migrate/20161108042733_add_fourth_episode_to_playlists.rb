class AddFourthEpisodeToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :fourth_episode, :string
  end
end
