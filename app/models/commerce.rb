class Commerce < ApplicationRecord
  belongs_to :user
  belongs_to :country
  belongs_to :category

  has_many :photos, as: :imageable, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates_presence_of :name, :user, :category, :email, :country, :city
  validates_uniqueness_of :email, allow_blank: false
end
