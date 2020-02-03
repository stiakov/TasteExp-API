class CommerceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :state, :city, :address, :landline, :mobile, :email, :website, :instagram
  belongs_to :user, serializer: UserSerializer
  belongs_to :commerce_type, serializer: CommerceTypeSerializer
  belongs_to :country, serializer: CountrySerializer
  has_many :photos, as: :imageable, serializer: PhotoSerializer
  has_many :reservations, serializer: ReservationSerializer
  has_many :favorites, serializer: FavoriteSerializer
end
