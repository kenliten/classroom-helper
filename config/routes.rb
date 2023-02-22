Rails.application.routes.draw do
  get 'dashboard' => 'dashboard#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'site#index'
  # root "articles#index"
end
