class Country < ApplicationRecord
  has_many :commerces
  validates_presence_of :name, :region
end
