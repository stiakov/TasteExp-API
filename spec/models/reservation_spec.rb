require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:commerce) }
  it { should validate_presence_of(:commerce) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:seat) }
  it { should validate_presence_of(:date_time) }
end
