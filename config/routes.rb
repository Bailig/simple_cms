Rails.application.routes.draw do

  root :to => 'public#index'

  get 'show/:permalink', :to => 'public#show', :as => "public_show"

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages
  resources :sections
  resources :admin_users, :except => [:show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
