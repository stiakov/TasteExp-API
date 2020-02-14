require 'rails_helper'

RSpec.describe 'Countries', type: :request do
  describe 'Index for Countries, auth not needed' do
    it 'return status 200 when the route is ok' do
      get v1_countries_index_path
      expect(response).to have_http_status(200)
    end
  end
end
