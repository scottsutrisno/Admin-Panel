Rails.application.routes.draw do
  get 'teacher_cohorts/index'
  get 'teacher_cohorts/show'
  get 'teacher_cohorts/new'
  get 'teacher_cohorts/edit'
  get 'teacher_cohorts/create'
  get 'teacher_cohorts/update'
  get 'teacher_cohorts/delete'
  get 'student_cohorts/index'
  get 'student_cohorts/show'
  get 'student_cohorts/new'
  get 'student_cohorts/edit'
  get 'student_cohorts/create'
  get 'student_cohorts/update'
  get 'student_cohorts/delete'
  get 'home/index'
  root to: 'home#index'
  resources :students
  resources :teachers
  resources :courses
  resources :cohorts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
