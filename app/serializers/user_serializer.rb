class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :commerces, serializer: CommerceSerializer
  has_many :photos, serializer: PhotoSerializer
  has_many :reservations, serializer: ReservationSerializer
  has_many :favorites, serializer: FavoriteSerializer
end
