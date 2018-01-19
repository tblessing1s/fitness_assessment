class AssessmentsController < ApplicationController

	def index
		@client = Client.find(params[:client_id])
		@assessments = Assessment.all
		@client.assessments = @assessments
	end

	def show
		@client = Client.find(params[:client_id])
		@assessment = Assessment.find(params[:id])
	end

	def new
		#@client = Client.find(params[:client_id])
		@assessment = Assessment.new
	end

	def create
		assessment_params = params.require(:assessment).permit(:client_id)
		@assessment = Assessment.new(assessment_params)
		@assessment.save
		redirect_to new_assessment_knee_path(@assessment)
	end
end
