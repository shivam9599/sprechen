Sprechen::Application.routes.draw do

  get '/auth/:provider/callback' => "sessions#create"

  get '/sign_out' => "sessions#destroy", :as => 'sign_out'

  resources :topics

  resources :conferences do
    collection do
      resources :search, :only => [:new, :create, :show], :controller => "search"
    end
  end

  namespace :speaker, :path => 'speaker/:user/' do
    resource :calendar
    resource :dashboard
    resources :bios
    resources :talks
  end

  root :to => 'home#index'

end
