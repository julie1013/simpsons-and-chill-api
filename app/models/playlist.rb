class Playlist < ActiveRecord::Base
  belongs_to :episode
  belongs_to :user

  validates :episode, presence: true
  validates :user, presence: true

  # prevent duplicate rows in join
  validates_uniqueness_of :user_id, :scope => [:episode_id]
end
