Rails.application.routes.draw do
  
resources :participants
  get 'participants/new'

  get 'participants/create'

  get 'participants/edit'

  get 'participants/update'

  get 'participants/show'

  get 'participants/index'
  
  post 'participants/create'

get '/signup', to: 'participants#new'
get '/volunteer', to: 'participants#new2'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
