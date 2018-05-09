Rails.application.routes.draw do
  root to: 'home#index'

  get '/admin' => 'admin#index'

  namespace :admin do
    resources :projects do
      resources :demos
    end

    resources :posts do
      resources :sections
    end

    resources :labs
  end

  namespace :api, defaults: { format: :json } do
    resources :projects, only: %i[index show] do
      resources :demos, only: :index
    end

    resources :posts, only: %i[index show] do
      resources :sections, only: :index
    end

    resources :labs, only: %i[index show]
  end

  scope 'developer-tools' do
    get '/debug' => 'developer_tools/debug#show'
  end

  get '/projects' => 'projects#index'
  get '/projects/:slug' => 'projects#show', as: :project

  get '/blog' => 'blog#index'
  get '/blog/:slug' => 'blog#show', as: :post

  get '/skills' => 'skills#index'

  get '/labs' => 'labs#index'
  get '/labs/:slug' => 'labs#show', as: :lab

  get '/contact' => 'contact#index'
end
