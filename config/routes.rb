Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  #get 'trainers/:id' => 'trainers#show'
  patch 'capture' => 'pokemons#capture', as: 'capture' #prefix??
  patch 'damage' => 'pokemons#damage', as: 'damage'
end
