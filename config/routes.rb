Rails.application.routes.draw do
  get 'users/detail'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get 'user/:id', to: 'users/registrations#detail'
    get 'signup', to: 'users/registrations#new'
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end

  resources :users do
    member do
      get :following, :followers
    end
  end

  root to: 'homes#index'
  get '/about', to: 'homes#about'

  # resources :recipes, only: %i[index create show destroy]
  resources :recipes
  resources :relationships, only: %i[create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
