Rails.application.routes.draw do

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages
  
  resources :sections
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
