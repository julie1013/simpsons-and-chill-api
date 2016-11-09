class User < ActiveRecord::Base
  include Authentication
  has_many :playlists
  has_many :episodes, through: :playlists
end
