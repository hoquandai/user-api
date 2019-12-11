Rails.application.routes.draw do
  root 'welcome#hello'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
    get 'list' => :index
  end

  get 'users/:id' => 'users#show'
  get 'users' => 'users#index'
  post 'users' => 'users#create'
  get 'users_with_skills/:skill_id' => 'users#with_skill'
  post 'users/:id' => 'users#update'
  get 'tutors' => 'users#tutors'

  get 'skills/:id' => 'skills#show'
  get 'skills' => 'skills#index'
  post 'skills' => 'skills#create'
  post 'skills/:id' => 'skills#update'
end
