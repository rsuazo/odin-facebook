Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  devise_scope :user do

    authenticated :user do
      root 'homepage#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :users
  resources :friendships
  resources :inverse_friendships
  resources :requests
  resources :homepage, only: [:index]
  resources :posts
  resources :likes, only: [:create]
  resources :comments, only: [:create]
end
