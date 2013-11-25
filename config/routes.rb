Derby::Application.routes.draw do
  resources :people
  resources :venues
  resources :teams
  resources :leagues
  resources :bouts
  root 'dashboard#index'
end
