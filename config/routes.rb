Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/home'
  
  get 'blog/:id', to: "pages#single_post"
  
  namespace :api, defaults: { format: :json } do
    namespace :v1, defaults: { format: :json } do
      get '/blogs', to: 'blogs#blogs_json'
      get '/single-post/:id', to: 'blogs#single_post_json'
    end
  end
end
