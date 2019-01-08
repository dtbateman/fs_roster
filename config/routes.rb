Rails.application.routes.draw do
resources :volunteers

  get 'volunteers/new'

  get 'volunteers/create'

  get 'volunteers/edit'

  get 'volunteers/update'

  get 'volunteers/show'

  get 'volunteers/index'

  get '/teachers', to: 'volunteers#new'
  get '/volunteer', to: 'volunteers#new'


resources :registrations

  get 'registrations/new'

  get 'registrations/create' 

  get 'registrations/edit'

  get 'registrations/update'

  get 'registrations/show'

  get 'registrations/index'

 get '/signup', to: 'registrations#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
