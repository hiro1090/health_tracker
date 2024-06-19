Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :weight_records
  root to: 'weight_records#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
