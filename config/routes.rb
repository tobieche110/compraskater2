Rails.application.routes.draw do
  resources :pedidos
  resources :productos
  devise_for :users
  root to: 'pagprincipal#index'
  get '/armatuskate', to:'welcome#armatuskate1'
  get '/armatuskate/elegir', to: 'welcome#index'
  get '/pedidosubido', to: 'pedidosubido#index'
  get '/quienessomos', to: 'quienessomos#index'
  get '/verproductos', to: 'verproductos#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
