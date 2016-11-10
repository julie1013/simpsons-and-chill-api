class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :user, :episode, :rating

  def user
    object.user_id
  end

  def episode
    object.episode_id
  end
end
