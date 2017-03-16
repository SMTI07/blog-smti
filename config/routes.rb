Rails.application.routes.draw do
  resources :articles
  get 'tags/:tag', to: 'articles#index', as: "tag"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
