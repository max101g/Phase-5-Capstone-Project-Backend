Rails.application.routes.draw do
  resources :admins
  resources :employers
  resources :seekers
  resources :users
  resources :jobtags
  resources :jobs
  resources :posts  
  resources :comments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # verify profiles
  patch "/employers/:id/verify",to: "employers#verify"
  patch "/seekers/:id/verify", to: "seekers#verify"

  # custom job search, e.g. find doctor jobs
  get "/jobs/search/:jobtag_code", to: "jobs#search"

  # Defines the root path route ("/")
  # root "articles#index"
end
