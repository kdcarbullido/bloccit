Rails.application.routes.draw do

  resources :posts
  
  resources :questions
  
#  get "welcome/index"
#  get "welcome/about"

  get 'about' => 'welcome#about'
  
  root 'welcome#index'

end
