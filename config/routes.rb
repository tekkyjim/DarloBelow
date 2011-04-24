Darlo::Application.routes.draw do

  resources :factions

  resources :characters

  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show,:index]
  match 'users/:id/change_role' => 'users#change_role', :as => 'change_role_path'

end
