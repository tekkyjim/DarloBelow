Darlo::Application.routes.draw do

  resources :characters

  root :to => "home#index"
  devise_for :users
  resources :users, :only => :show

end
