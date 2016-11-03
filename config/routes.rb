Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  #get 'trainers/:id' => 'trainers#show'
  get '/pokemons/new', to: 'pokemons#new'
  post '/pokemons/create', to: 'pokemons#create'
  patch 'capture' => 'pokemons#capture', as: 'capture' #prefix??
  patch 'damage' => 'pokemons#damage', as: 'damage'
end
