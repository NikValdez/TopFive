Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  resources :posts
  resources :users

	root 'front#home'
end
