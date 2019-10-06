Rails.application.routes.draw do

  
  resources :courses do
  	resources :comments
  end

  resources :students

  resources :profesors do
  	resources :evaluations
  end
  
  devise_for :users
	  root "welcome#index"
  	get 'welcome/index'
  	resources :users
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
