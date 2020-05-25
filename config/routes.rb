Rails.application.routes.draw do
  resources :messages
  resources :participant_answers
  resources :participants
  resources :parties
  resources :answers
  resources :questions
  resources :quizzes
  resources :users
  
  get '/user', to: 'users#get_by_email'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, :quizzes, :questions, :answers

  mount ActionCable.server => '/cable'
end
