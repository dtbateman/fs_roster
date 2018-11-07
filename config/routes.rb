Rails.application.routes.draw do
  resources :registrations
  get '/signup', to: 'registrations#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
