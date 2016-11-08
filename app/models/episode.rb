class Episode < ActiveRecord::Base
  has_many :playlists
  has_many :users, through: :playlists
end
