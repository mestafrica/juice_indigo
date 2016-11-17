Rails.application.routes.draw do
root "resumes#index"
resources :resumes, only: [:index, :new, :create, :destroy]

   

  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/destroy'

  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: "home#index"
end