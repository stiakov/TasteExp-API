class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :seat, :date_time
  belongs_to :user, serializer: UserSerializer
  belongs_to :commerce, serializer: CommerceSerializer
end
