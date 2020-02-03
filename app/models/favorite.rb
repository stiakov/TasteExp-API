class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :commerce
  validates_presence_of :user, :commerce
  validates :user, uniqueness: { scope: :commerce }
end
