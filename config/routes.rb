Rails.application.routes.draw do

  get 'comments/index'
  get 'comments/new'
  get 'comments/edit'
  get 'comments/show',as: 'show_comment'
  get 'answers/index'
  get 'answers/new'
  get 'answers/edit'
  get 'answers/show'
  devise_for :users
  
  get '/top' => 'root#top'
  
  get 'comments/update'
  get 'comments/create'
  get 'answers/index'
  get 'answers/update'
  get 'answers/edit'
  get 'answers/new'
  get 'answers/create'
  
  resources :answers
  resources :comments
  
  get 'comments/new/:id' => 'comments#new'
  post 'comments/create' => 'comments#create'

  patch 'answers/:id' => 'answers#update', as: 'update_answer'
  
  root 'root#index'
  
  get 'root/top' => 'root#top', as: 'root_top'
  
 
end

