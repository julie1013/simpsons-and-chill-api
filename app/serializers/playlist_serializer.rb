class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :first_episode, :second_episode, :third_episode,
             :fourth_episode, :fifth_episode, :sixth_episode
end
