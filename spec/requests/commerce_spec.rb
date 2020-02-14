require 'rails_helper'

RSpec.describe 'Commerces', type: :request do
  describe 'Open endpoints, auth not needed' do
    it 'return status 200 when the route is ok' do
      get v1_commerces_index_path
      expect(response).to have_http_status(200)
    end
    it 'return status 204 when can not find a param or commerce' do
      get v1_commerces_show_path(1)
      expect(response).to have_http_status(204)
    end
  end

  context 'restricted actions for non-authenticated user' do
    it 'commerce create returns status 401' do
      post v1_commerces_create_path
      expect(response).to have_http_status(401)
    end

    it 'commerce create returns a body that asks for signin or signup' do
      post v1_commerces_create_path
      error = {"errors":['You need to sign in or sign up before continuing.']}
      expect(response.body).to include(error.to_json)
    end

    it 'commerce update returns status 401' do
      put v1_commerces_update_path(1)
      expect(response).to have_http_status(401)
    end

    it 'commerce update returns a body that asks for signin or signup' do
      put v1_commerces_update_path(1)
      error = {"errors":['You need to sign in or sign up before continuing.']}
      expect(response.body).to include(error.to_json)
    end

    it 'commerce delete returns status 401' do
      delete v1_commerces_destroy_path(1)
      expect(response).to have_http_status(401)
    end

    it 'commerce delete returns a body that asks for signin or signup' do
      delete v1_commerces_destroy_path(1)
      error = {"errors":['You need to sign in or sign up before continuing.']}
      expect(response.body).to include(error.to_json)
    end
  end
end
