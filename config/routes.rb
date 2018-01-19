Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "clients#index"
  #get "clients" => "clients#index"
  #get "clients/:id" => "clients#show", as: "client"
  #get "client/:id/edit" => "clients#edit", as: "edit_client"
  #get "client/new" => "clients#new", as: "new_client"

	resources :clients do
		resources :assessments, only: [:index]
	end

	resources :assessments, only: [:new, :create, :show] do
		#get '/knee/new' => 'knee#new'
		#post '/knee' => 'knee#create'
		#get '/knee/:id/edit' => 'knee#edit', as: 'knee_edit'
		#patch '/knee/:id' => 'knee#update'
		resources :knee, only: [:new, :create, :update]
	end
end
