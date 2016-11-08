class QueuingSerializer < ActiveModel::Serializer
  attributes :id
  has_one :playlist
  has_one :episode
end
