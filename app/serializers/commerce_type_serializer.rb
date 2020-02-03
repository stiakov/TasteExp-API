class CommerceTypeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :commerces
end
