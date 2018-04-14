Rails.application.routes.draw do
  root to: 'home#index'

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

  get '/contact' => 'contact#index'
end
