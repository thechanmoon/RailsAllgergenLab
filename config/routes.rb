Rails.application.routes.draw do
  get 'users/index'
  get 'users/nshow'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'users/user_params'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ingredients
  resources :recipes

  get '/search', to: 'recipes#search', as: 'search'
end
