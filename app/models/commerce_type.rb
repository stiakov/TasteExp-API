class CommerceType < ApplicationRecord
  has_many :commerce
  validates_presence_of :name
end
