class ClientsController < ApplicationController
	before_action :authenticate_trainer!

	include Upcoming

	def index
		@clients = Client.all
		@assess_status = upcoming_assessments(@clients)
		@up_to_date = @assess_status["Up to Date"]
		@upcoming = @assess_status["Upcoming"]
		@past_due = @assess_status["Past Due"]
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
		@client = Client.new(client_params)
		if @client.save
			redirect_to @client
		else
			render :new
		end
	end

	def update
		@client = Client.find(params[:id])
		if @client.update(client_params)
			redirect_to @client
		else
			render :edit
		end
	end

	def destroy
		@client = Client.find(params[:id])
		@client.destroy
		redirect_to clients_path
	end

private

	def client_params
		params.require(:client).
			permit(:name, :email, :phone, :date_of_birth, :home_address)
	end
end
