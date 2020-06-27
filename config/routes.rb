Rails.application.routes.draw do
  get 'recipes/index'
  devise_for :users
  root to:'homes#index'
  get '/recipe', to:'recipe#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
