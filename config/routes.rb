Rails.application.routes.draw do
  resources :notes do
    resources :note_students
  end
  resources :students do
    resources :student_guardians
  end
  
  resources :subjects do
    resources :classroom_subjects
  end

  resources :classrooms do
    resources :classroom_subjects
  end
  
  get 'dashboard' => 'dashboard#index'
  get 'profile' => 'dashboard#profile'
  get 'tools' => 'dashboard#tools'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'site#index'
  # root "articles#index"
end
