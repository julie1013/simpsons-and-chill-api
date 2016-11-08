class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :episodes

  def episodes
    object.episodes.pluck(:id)
  end
end
