class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :episodes, through: :queuings
  has_many :queuings
end
