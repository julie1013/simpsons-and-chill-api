class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :user, :episode, :rating
  # has_one :episode
  # has_one :user

  # def user
  #   object.user.id
  # end
  #
  # def episode
  #   object.episode.id
  # end
end
