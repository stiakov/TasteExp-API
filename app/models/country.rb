class Country < ApplicationRecord
  has_many :commerce
  validates_presence_of :name, :region
end
