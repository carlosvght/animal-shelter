Rails.application.routes.draw do
  get 'animals/index'
  resources :animals
  root 'animals#index'
end
