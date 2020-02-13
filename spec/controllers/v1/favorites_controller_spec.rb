require 'rails_helper'

RSpec.describe V1::FavoritesController, type: :controller do
  describe 'GET #create' do
    it 'returns http failure without authentication' do
      get :create
      puts response
      expect(response).to have_http_status(401)
    end
  end
end
