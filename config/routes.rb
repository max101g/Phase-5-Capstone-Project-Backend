Rails.application.routes.draw do
  resources :jobseekerprofiles
  resources :employerprofiles
  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
