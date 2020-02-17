require 'rails_helper'

RSpec.describe 'Commerces', type: :request do
  describe 'Open endpoints, auth not needed' do
    it 'return status 200 when the route is ok' do
      get v1_commerces_index_path
      expect(response).to have_http_status(200)
      expect(response.content_type).to eq('application/json; charset=utf-8')
    end
    it 'return status 204 when can not find a param or commerce' do
      get v1_commerces_show_path(1)
      expect(response).to have_http_status(204)
    end
  end

  context 'restricted actions for NON_AUTHENTICATED user' do
    it 'Commerce create returns status 401' do
      post v1_commerces_create_path
      expect(response).to have_http_status(401)
    end

    it 'Commerce create returns a body that asks for SignIn or SignUp' do
      post v1_commerces_create_path
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end

    it 'Commerce update returns status 401' do
      put v1_commerces_update_path(1)
      expect(response).to have_http_status(401)
    end

    it 'Commerce update returns a body that asks for SignIn or SignUp' do
      put v1_commerces_update_path(1)
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end

    it 'Commerce delete returns status 401' do
      delete v1_commerces_destroy_path(1)
      expect(response).to have_http_status(401)
    end

    it 'Commerce delete returns a body that asks for SignIn or SignUp' do
      delete v1_commerces_destroy_path(1)
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end
  end

  context 'restricted actions for NON_AUTHENTICATED user' do
    it 'Commerce Not Saved action returns status 401' do
      get v1_commerces_notsaved_path
      expect(response).to have_http_status(401)
    end

    it 'Commerce Not Saved action returns a body that asks for SignIn or SignUp' do
      get v1_commerces_notsaved_path
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end

    it 'Commerce Filtering  Not Saved action returns status 401' do
      get v1_commerces_not_saved_filter_path(1)
      expect(response).to have_http_status(401)
    end

    it 'Commerce Filtering  Not Saved action returns a body that asks for SignIn or SignUp' do
      get v1_commerces_not_saved_filter_path(1)
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end

    it 'Commerce Filtering Favorites action returns status 401' do
      get v1_commerces_not_saved_filter_path(1)
      expect(response).to have_http_status(401)
    end

    it 'Commerce Filtering Favorites action returns a body that asks for SignIn or SignUp' do
      get v1_commerces_favorites_filter_path(1)
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end
  end
end
