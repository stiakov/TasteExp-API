class Commerce < ApplicationRecord
  belongs_to :user
  belongs_to :country
  belongs_to :commerce_type

  has_many :photos, as: :imageable, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates_presence_of :name, :user, :commerce_type, :email, :country, :city
  validates_uniqueness_of :email, allow_blank: false
end
