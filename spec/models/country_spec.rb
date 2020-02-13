require 'rails_helper'

RSpec.describe Country, type: :model do
  it { should have_many(:commerces) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:region) }
end
