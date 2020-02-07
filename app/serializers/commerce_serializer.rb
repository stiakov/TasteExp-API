class CommerceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :state, :city, :address, :landline, :mobile, :email, :website, :instagram, :category, :country, :photos
  belongs_to :user, serializer: UserSerializer
  belongs_to :category, serializer: CategorySerializer
  belongs_to :country, serializer: CountrySerializer
  has_many :photos, as: :imageable, serializer: PhotoSerializer
  has_many :reservations, serializer: ReservationSerializer
  has_many :favorites, serializer: FavoriteSerializer
end
