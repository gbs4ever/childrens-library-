Rails.application.routes.draw do

  
  resources :checkouts
  resources :books
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root  to: 'welcome#home'
end
