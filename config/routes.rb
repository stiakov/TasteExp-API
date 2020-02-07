Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :v1 do
    resources :categories
    get 'countries/index'
    get 'users/index'
    get 'users/show/:id', to: 'users#show'
  end

  namespace :v1 do
    get 'commerces/index'
    get 'commerces/notsaved'
    post 'commerces/create'
    get 'commerces/show/:id', to: 'commerces#show'
    put 'commerces/:id/edit', to: 'commerces#updacte'
    get 'commerces/show'
    delete 'commerces/:id/delete', to: 'commerces#destroy'
  end

  namespace :v1 do
    get 'reservations/index'
    post 'reservations/create'
    get 'reservations/show/:id', to: 'reservations#show'
    put 'reservations/:id/edit', to: 'reservations#update'
    delete 'reservations/:id/delete', to: 'reservations#destroy'
  end

  namespace :v1 do
    get 'commerce_types/index'
    post 'commerce_types/create'
    get 'commerce_types/show/:id', to: 'commerce_types#show'
    put 'commerce_types/:id/edit', to: 'commerce_types#update'
    delete 'commerce_types/:id/delete', to: 'commerce_types#destroy'
  end

  namespace :v1 do
    get 'favorites/index'
    get 'favorites/user', to: 'favorites#user_favorites'
    post 'favorites/create'
    get 'favorites/show/:id', to: 'favorites#show'
    delete 'favorites/:id/delete', to: 'favorites#destroy'
  end

  namespace :v1 do
    post 'photos/create'
    get 'photos/show/user/:id', to: 'photos#show_user'
    get 'photos/show/commerce/:id', to: 'photos#show_commerce'
    delete 'photos/:id/delete', to: 'photos#destroy'
    end
end
