Rails.application.routes.draw do
  namespace :admin do
    resources :labs
  end
  root to: 'home#index'

  get '/admin' => 'admin#index'

  namespace :admin do
    resources :projects do
      resources :demos
    end

    resources :posts do
      resources :sections
    end
  end

  get '/projects' => 'projects#index'
  get '/projects/:slug' => 'projects#show'

  get '/about' => 'about#index'

  get '/blog' => 'blog#index'
  get '/blog/:slug' => 'blog#show'

  get '/skills' => 'skills#index'

  get '/contact' => 'contact#index'
end
