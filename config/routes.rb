Rails.application.routes.draw do

	root 'welcome#index'

	resources :users, only: [:create]
	get "/signup", to: "users#new", as: :signup
	get "/profile", to: "users#show", as: :profile


	resources :charities
  get '/:name/donations/new', to:"donations#new", as: :make_donation
  post '/:name/donations/', to:"donations#create", as: :donations
  get '/:name/donations/:id', to:"donations#show", as: :donation_show

  # post '/donations', to:"donations#create", as: :create_donation

	resources :sessions, only: [:create]
	get "/login", to: "sessions#new", as: :login
	get "/logout", to: "sessions#destroy", as: :logout

	# resources :donations, only: [:new, :create, :show]

end

#          root GET    /                              welcome#index
#         users POST   /users(.:format)               users#create
#        signup GET    /signup(.:format)              users#new
#       profile GET    /profile(.:format)             users#show
#     charities GET    /charities(.:format)           charities#index
#               POST   /charities(.:format)           charities#create
#   new_charity GET    /charities/new(.:format)       charities#new
#  edit_charity GET    /charities/:id/edit(.:format)  charities#edit
#       charity GET    /charities/:id(.:format)       charities#show
#               PATCH  /charities/:id(.:format)       charities#update
#               PUT    /charities/:id(.:format)       charities#update
#               DELETE /charities/:id(.:format)       charities#destroy
# make_donation GET    /:name/donations/new(.:format) donations#new
#      sessions POST   /sessions(.:format)            sessions#create
#         login GET    /login(.:format)               sessions#new
#        logout GET    /logout(.:format)              sessions#destroy
#     donations POST   /donations(.:format)           donations#create
#  new_donation GET    /donations/new(.:format)       donations#new
#      donation GET    /donations/:id(.:format)       donations#show