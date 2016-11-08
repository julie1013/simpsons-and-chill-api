class Episode < ActiveRecord::Base
  has_many :playlists, through: :queuings
  has_many :queuings
end
