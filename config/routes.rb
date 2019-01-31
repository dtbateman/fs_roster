Rails.application.routes.draw do
  
  get 'assignments/new'

  get 'assignments/create'

  get 'assignments/edit'

  get 'assignments/update'

  get 'assignments/show'

  get 'assignments/index'

  get 'student_details/new'

  get 'student_details/create'

  get 'student_details/edit'

  get 'student_details/update'

  get 'student_details/show'

  get 'student_details/index'

  get 'volunteer_details/new'

  get 'volunteer_details/create'

  get 'volunteer_details/edit'

  get 'volunteer_details/update'

  get 'volunteer_details/show'

  get 'volunteer_details/index'

resources :participants
  get 'participants/new'

  get 'participants/create'

  get 'participants/edit'

  get 'participants/update'

  get 'participants/show', to: 'participants#show'

  get 'participants/index'
  
  post 'participants/create'

get '/signup', to: 'participants#new'
get '/volunteer', to: 'participants#new2'

get '/friendspeak', to: 'participants#index'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
