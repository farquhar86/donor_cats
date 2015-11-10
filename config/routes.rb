Rails.application.routes.draw do




	root 'welcome#index'

	resources :users, only: [:create]
	get "/signup", to: "users#new", as: :signup
	get "/profile", to: "users#show", as: :profile

	resources :charities
  resources :donations


	resources :sessions, only: [:create]
	get "/login", to: "sessions#new", as: :login
	get "/logout", to: "sessions#destroy", as: :logout

end

#         root GET    /                             welcome#index
#        users GET    /users(.:format)              users#index
#              POST   /users(.:format)              users#create
#     new_user GET    /users/new(.:format)          users#new
#    edit_user GET    /users/:id/edit(.:format)     users#edit
#         user GET    /users/:id(.:format)          users#show
#              PATCH  /users/:id(.:format)          users#update
#              PUT    /users/:id(.:format)          users#update
#              DELETE /users/:id(.:format)          users#destroy
#    charities GET    /charities(.:format)          charities#index
#              POST   /charities(.:format)          charities#create
#  new_charity GET    /charities/new(.:format)      charities#new
# edit_charity GET    /charities/:id/edit(.:format) charities#edit
#      charity GET    /charities/:id(.:format)      charities#show
#              PATCH  /charities/:id(.:format)      charities#update
#              PUT    /charities/:id(.:format)      charities#update
#              DELETE /charities/:id(.:format)      charities#destroy