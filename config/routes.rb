Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :v1 do
    resources :categories, only: %i[index show]
    get 'countries/index'
  end

  namespace :v1 do
    get 'commerces/index'
    get 'commerces/notsaved'
    get 'commerces/filter/:id', to: 'commerces#filter_not_saved', as: :commerces_not_saved_filter
    get 'commerces/filterfav/:id', to: 'commerces#filter_favorites', as: :commerces_favorites_filter
    post 'commerces/create'
    get 'commerces/show/:id', to: 'commerces#show', as: :commerces_show
    put 'commerces/:id/edit', to: 'commerces#update', as: :commerces_update
    delete 'commerces/:id/delete', to: 'commerces#destroy', as: :commerces_destroy
  end

  namespace :v1 do
    get 'reservations/index'
    post 'reservations/create'
    get 'reservations/show/:id', to: 'reservations#show', as: :reservations_show
    put 'reservations/:id/edit', to: 'reservations#update', as: :reservations_update
    delete 'reservations/:id/delete', to: 'reservations#destroy', as: :reservations_destroy
  end

  namespace :v1 do
    get 'favorites/user', to: 'favorites#user_favorites', as: :favorites_user
    post 'favorites/create'
    get 'favorites/show/:id', to: 'favorites#show', as: :favorites_show
    delete 'favorites/:id/delete', to: 'favorites#destroy', as: :favorites_destroy
  end

  namespace :v1 do
    post 'photos/create'
    get 'photos/show/user/:id', to: 'photos#show_user', as: :photos_user
    get 'photos/show/commerce/:id', to: 'photos#show_commerce', as: :photos_commerce
    delete 'photos/:id/delete', to: 'photos#destroy', as: :photos_destroy
  end
end
