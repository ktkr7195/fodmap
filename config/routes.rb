Rails.application.routes.draw do
  get 'users/detail'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }
  devise_scope :user do
    get 'user/:id', to: 'users/registrations#detail'
    get 'signup', to: 'users/registrations#new'
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :users do
    member do
      get :following, :followers
    end
  end

  post   '/like/:recipe_id' => 'likes#like',   as: 'like'
  delete '/like/:recipe_id' => 'likes#unlike', as: 'unlike'

  get 'tags/:tag', to: 'recipes#index', as: :tag

  root to: 'homes#index'
  get '/about', to: 'homes#about'

  get 'recipes/liked', to: 'recipes#liked'
  get 'recipes/search', to: 'recipes#search'

  # resources :recipes, only: %i[index create show destroy]
  resources :recipes do
    resources :comments, only: [:create, :destroy]
  end  
  resources :relationships, only: %i[create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
