Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ingredients
  resources :recipes

  get '/search', to: 'recipes#search', as: 'search'
end
