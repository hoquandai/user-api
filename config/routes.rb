Rails.application.routes.draw do
  root 'welcome#hello'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/:id' => 'users#show'
end
