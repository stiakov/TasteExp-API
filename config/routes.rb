Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :v1 do
    get 'countries/index'
    get 'users/index'
    get 'users/show/:id', to: 'users#show'
  end

  namespace :v1 do
    get 'commerces/index'
    post 'commerces/create'
    get 'commerces/show/:id', to: 'commerces#show'
    put 'commerces/:id/edit', to: 'commerces#update'
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
    get 'routes/index'
    post 'routes/create'
    get 'routes/show/:id', to: 'routes#show'
    put 'routes/:id/edit', to: 'routes#update'
    delete 'routes/:id/delete', to: 'routes#destroy'
  end

  namespace :v1 do
    get 'favorites/index'
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
