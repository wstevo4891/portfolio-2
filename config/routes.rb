Rails.application.routes.draw do
  resources :projects
  resources :posts

  root to: 'home#index'
end
