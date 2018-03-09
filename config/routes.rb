Rails.application.routes.draw do
  devise_for :trainers
  resources :trainers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "clients#index"
  #get "clients" => "clients#index"
  #get "clients/:id" => "clients#show", as: "client"
  #get "client/:id/edit" => "clients#edit", as: "edit_client"
  #get "client/new" => "clients#new", as: "new_client"
  get :search, controller: :search
	resources :clients do
		resources :assessments, only: [:index]
	end

	resources :assessments, only: [:new, :create, :show, :edit, :update, :destroy]
  get "/assessments" => "clients#index"
	
end
