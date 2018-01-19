class ClientsController < ApplicationController
	def index
		@clients = Client.all
	end

	def show
		@client = Client.find(params[:id])
	end

	def edit
		@client = Client.find(params[:id])
	end

	def new
		@client = Client.new
	end

	def create
		client_params = params.require(:client).permit(:name, :email, :phone, :date_of_birth, :home_address)
		@client = Client.new(client_params)
		@client.save
		redirect_to @client
	end
end
