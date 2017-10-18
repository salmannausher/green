Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
	resources :admin, only: [:index]
	namespace :admin do
		root 'admin#index'
		resources :users
		resources :founders
	end
	get 'founder', to: 'statics#founder'
	get 'services', to: 'statics#services'
	get 'projects', to: 'statics#projects'
	get 'contact', to: 'statics#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
