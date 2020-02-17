require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'Open endpoints Index, auth not needed' do
    it 'return status 200 when the route is ok' do
      get v1_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
