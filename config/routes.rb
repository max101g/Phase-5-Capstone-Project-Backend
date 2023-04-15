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

  # custom post search for all user posts
  get "/posts/users/:user_code", to: "posts#user_posts"

  # get all post comments based on post_code
  get "/comments/post/:post_code", to: "comments#post_comments"

  # generate an access token to enable login
  post '/generate-token/', to: 'auth#login'

  # Defines the root path route ("/")
  # root "articles#index"
end
