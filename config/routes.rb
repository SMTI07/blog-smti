Rails.application.routes.draw do
  resources :articles
  root 'articles#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :schedules
  resources :subjects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
