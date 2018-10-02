Rails.application.routes.draw do
  resources :teacher_skills
  resources :camp_skills
  resources :student_activities
  resources :skills
  resources :activities
  resources :students
  resources :camps
  resources :teachers do
    collection do
      get :search #creates a new path for the searching
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
