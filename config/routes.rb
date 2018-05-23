Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  resources :students
  resources :teachers
  resources :courses
  resources :cohorts
  resources :teacher_cohorts
  resources :student_cohorts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
