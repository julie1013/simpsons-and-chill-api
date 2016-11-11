class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.references :episode, index: true, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end

    # prevent duplicate rows in join
    add_index :playlists, [:user_id, :episode_id]
  end
end
