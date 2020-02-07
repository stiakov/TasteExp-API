class Category < ApplicationRecord
  has_many :commerces
  validates_presence_of :name
end
