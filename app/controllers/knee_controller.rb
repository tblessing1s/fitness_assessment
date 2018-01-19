class KneeController < ApplicationController

	def new
		@assessment = Assessment.find(params[:assessment_id])
		@knee = Knee.new
	end

	def update
	end

	def create
		@assessment = Assessment.find(params[:assessment_id])
		knee_params = params.require(:knee).permit(:assessment_id, :knee_flexion_left, :knee_flexion_right, :knee_extension_left, :knee_extension_right)
		@knee = Knee.new(knee_params)
		@assessment.knee = @knee
		@assessment.save
		redirect_to @assessment
	end
end
