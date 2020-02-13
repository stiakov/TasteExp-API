require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:photos).dependent(:destroy) }
  it { should have_many(:reservations).dependent(:destroy) }
  it { should have_many(:favorites).dependent(:destroy) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:name) }
end
