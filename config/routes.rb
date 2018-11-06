Rails.application.routes.draw do
  get 'registrations/new'

  get 'registrations/create' => 'registrations#create'

  get 'registrations/edit'

  get 'registrations/update'

  get 'registrations/show'

  get 'registrations/index'

  get 'registration/new'

  get 'registration/create'

  get 'registration/edit'

  get 'registration/update'

  get 'registration/show'

  get 'registration/index'

 get '/signup', to: 'register#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
