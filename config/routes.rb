Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "main#index"
  resources :clients
  resources :services

  get '/main/:id', to: 'main#show', as: 'main_show_path'  
  get '/main/', to: 'main#index', as: 'main_path'

end
