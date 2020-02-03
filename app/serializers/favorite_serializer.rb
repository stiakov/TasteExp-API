class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :commerce, serializer: CommerceSerializer
  belongs_to :user, serializer: UserSerializer
end
