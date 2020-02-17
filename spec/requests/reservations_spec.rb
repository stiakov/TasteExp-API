require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  context 'restricted actions for NON_AUTHENTICATED user' do
    it 'Reservation index returns status 401' do
      get v1_reservations_index_path
      expect(response).to have_http_status(401)
    end

    it 'Reservation create returns a body that asks for SignIn or SignUp' do
      get v1_reservations_index_path
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end

    it 'Reservation index returns status 401' do
      get v1_reservations_show_path(1)
      expect(response).to have_http_status(401)
    end

    it 'Reservation create returns a body that asks for SignIn or SignUp' do
      get v1_reservations_show_path(1)
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end

    it 'Reservation create returns status 401' do
      post v1_reservations_create_path
      expect(response).to have_http_status(401)
    end

    it 'Reservation create returns a body that asks for SignIn or SignUp' do
      post v1_reservations_create_path
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end
  end
  context 'restricted actions for NON_AUTHENTICATED user' do
    it 'Reservation update returns status 401' do
      put v1_reservations_update_path(1)
      expect(response).to have_http_status(401)
    end

    it 'Reservation update returns a body that asks for SignIn or SignUp' do
      put v1_reservations_update_path(1)
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end

    it 'Reservation delete returns status 401' do
      delete v1_reservations_destroy_path(1)
      expect(response).to have_http_status(401)
    end

    it 'Reservation delete returns a body that asks for SignIn or SignUp' do
      delete v1_reservations_destroy_path(1)
      error = { errors: ['You need to sign in or sign up before continuing.'] }
      expect(response.body).to include(error.to_json)
    end
  end
end
