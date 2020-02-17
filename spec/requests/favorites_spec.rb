require 'rails_helper'

RSpec.describe 'Favorites', type: :request do
  context 'restricted actions for NON_AUTHENTICATED users' do
    it 'Favorite create returns status 401' do
      post v1_favorites_create_path
      expect(response).to have_http_status(401)
    end

    it 'Favorites create returns a body that asks for signin or signup' do
      post v1_favorites_create_path
      error = { "errors": ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end

    it 'Favorite update returns status 401' do
      get v1_favorites_show_path(1)
      expect(response).to have_http_status(401)
    end

    it 'Favorite update returns a body that asks for signin or signup' do
      get v1_favorites_show_path(1)
      error = { "errors": ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end

    it 'Favorite delete returns status 401' do
      delete v1_favorites_destroy_path(1)
      expect(response).to have_http_status(401)
    end

    it 'Favorite delete returns a body that asks for signin or signup' do
      delete v1_favorites_destroy_path(1)
      error = { "errors": ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end
  end
end
