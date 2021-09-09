Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get ‘/user/:id’, to: ‘user#create_fast’
  get 'create_fast', to: "users#create_fast"
end
