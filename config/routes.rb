Rails.application.routes.draw do
  # post: new, create, edit, update, show
  #resources :posts, only: [:new, :create, :edit, :update, :show]
  get '/posts', to: "posts#index", as: "posts"
  get '/posts/new', to: "posts#new", as: "new_post"
  post '/posts', to: "posts#create"
  get '/posts/:id', to: "posts#show", as: "post"
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'

  # blogger: new, create, show
  # resources :blogger, only: [:new, :create, :show]
  get '/bloggers', to: "bloggers#index", as: "bloggers"
  get '/bloggers/new', to: "bloggers#new", as: "new_blogger"
  post '/bloggers', to: "bloggers#create"
  get '/bloggers/:id', to: "bloggers#show", as: "blogger"

  # destination: show
  # resources :destinations, only: [:show]
  get '/destinations', to: "destinations#index", as: "destinations"
  get '/destinations/:id', to: "destinations#show", as: "destination"
  # Make sure all should be plural before as bloggers
  # http://guides.rubyonrails.org/routing.html
end
