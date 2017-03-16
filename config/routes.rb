HackerNews::Application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :messages, :except => [:index]
  resources :users
  match('/posts/:id/vote', :via => :put, :to => 'posts#upvote')
end
