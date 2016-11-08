class Playlist < ActiveRecord::Base
  belongs_to :episode, inverse_of: :playlists
  belongs_to :user, inverse_of: :playlists
end
