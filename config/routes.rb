Rails.application.routes.draw do
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
