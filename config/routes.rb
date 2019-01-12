Rails.application.routes.draw do
  get 'participants/new'

  get 'participants/creat'

  get 'participants/edit'

  get 'participants/update'

  get 'participants/show'

  get 'participants/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
