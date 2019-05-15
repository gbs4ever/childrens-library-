Rails.application.routes.draw do


  
  resources :reviews, only: [:new, :create,:index]
  resources :checkouts #, only: [:new, :create, :index, :show,:delete]
  resources :books  do
     resources :reviews, only: [:new, :create,:show]
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root  to: 'welcome#home'
end
