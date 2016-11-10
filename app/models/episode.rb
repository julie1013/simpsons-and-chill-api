class Episode < ActiveRecord::Base
  has_many :playlists, dependent: :destroy
  has_many :users, through: :playlists
end
