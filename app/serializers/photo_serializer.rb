class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image_data
  belongs_to :imageable
end
