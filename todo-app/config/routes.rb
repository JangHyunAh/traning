Rails.application.routes.draw do
  get 'users/new'
  root 'tasks#index'
  resources :tasks
  get 'sessions/new'
  get 'tasks/index'
   
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #회원가입 페이지
  get '/signup', to: 'users#new', as: :signup
  post '/users', to: 'users#create'
end
