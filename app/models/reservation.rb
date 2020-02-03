class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :commerce
  validates_presence_of :commerce, :user, :seat, :date_time
  validates :user, uniqueness: { scope: :commerce }
end
