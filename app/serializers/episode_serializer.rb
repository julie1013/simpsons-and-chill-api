class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :users

  def users
    object.users.pluck(:id)
  end
end
