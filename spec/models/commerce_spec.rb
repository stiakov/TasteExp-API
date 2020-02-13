require 'rails_helper'

RSpec.describe Commerce, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:country) }
  it { should belong_to(:category) }
  it { should have_many(:photos).dependent(:destroy) }
  it { should have_many(:reservations).dependent(:destroy) }
  it { should have_many(:favorites).dependent(:destroy) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:city) }
end
