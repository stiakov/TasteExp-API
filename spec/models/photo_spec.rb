require 'rails_helper'

RSpec.describe Photo, type: :model do
  it { should belong_to(:imageable) }
  it { should validate_presence_of(:image_data) }
end
