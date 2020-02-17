class User < ActiveRecord::Base
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :commerces, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :photos, as: :imageable, dependent: :destroy
  has_many :reservations, dependent: :destroy
  validates_presence_of :name
end
