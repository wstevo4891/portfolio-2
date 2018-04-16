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

  namespace :api do
    get '/projects' => 'projects#index'
    get '/projects/:id' => 'projects#show'

    get '/posts' => 'posts#index'
    get '/posts/:id' => 'posts#show'

    get '/labs' => 'labs#index'
    get '/labs/:id' => 'labs#show'

    get '/projects/:project_id/demos' => 'demos#index'

    get '/posts/:post_id/sections' => 'sections#index'
  end

  get '/projects' => 'projects#index'
  get '/projects/:slug' => 'projects#show'

  get '/blog' => 'blog#index'
  get '/blog/:slug' => 'blog#show'

  get '/skills' => 'skills#index'

  get '/labs' => 'labs#index'
  get '/labs/:slug' => 'labs#show'

  get '/contact' => 'contact#index'
end
