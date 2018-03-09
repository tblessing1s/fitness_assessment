class AssessmentsController < ApplicationController
	before_action :authenticate_trainer!

	def index
		@client = Client.find(params[:client_id])
		@assessments = Assessment.client_assessments(@client)
	end

	def show
		@assessment = Assessment.find(params[:id])
	end

	def edit
		@assessment = Assessment.find(params[:id])
	end

	def new
		@assessment = Assessment.new
	end

	def create
		@assessment = Assessment.new(assessment_params)
		if @assessment.save
			redirect_to @assessment
		else
			render :new
			fail
		end
	end

	def update
		@assessment = Assessment.find(params[:id])
		if @assessment.update(assessment_params)
			redirect_to @assessment
		else
			render :edit
		end
	end

	def destroy
		@assessment = Assessment.find(params[:id])
		@assessment.destroy
		redirect_to clients_path
	end

private

	def assessment_params
		params.require(:assessment).
		permit(:client_id,
			knee_attributes: [:assessment_id, :knee_flexion_left, :knee_flexion_right, :knee_extension_left, :knee_extension_right], 
			hip_attributes: [:assessment_id, :hip_flexion_right, :hip_flexion_left, :hip_extension_left, :hip_extension_right, :hip_abduction_left, :hip_abduction_right, :hip_adduction_left, :hip_adduction_right, :hip_internal_rotation_90_left, :hip_internal_rotation_90_right, :hip_external_rotation_90_left, :hip_external_rotation_90_right, :hip_internal_rotation_0_left, :hip_internal_rotation_0_right, :hip_external_rotation_0_left, :hip_external_rotation_0_right],
			shoulder_attributes: [:assessment_id, :shoulder_flexion_left, :shoulder_flexion_right, :shoulder_extension_left, :shoulder_extension_right, :shoulder_abduction_left, :shoulder_abduction_right, :shoulder_adduction_left, :shoulder_adduction_right, :shoulder_internal_rotation_left, :shoulder_internal_rotation_right, :shoulder_external_rotation_left, :shoulder_external_rotation_right, :shoulder_horizontal_abduction_left, :shoulder_horizontal_abduction_right, :shoulder_horizontal_adduction_left, :shoulder_horizontal_adduction_right],
			scapula_attributes: [:assessment_id, :scapula_elevation_left, :scapula_elevation_right, :scapula_depression_left, :scapula_depression_right, :scapula_protraction_left, :scapula_protraction_right, :scapula_retraction_left, :scapula_retraction_right, :scapula_upward_rotation_left, :scapula_upward_rotation_right, :scapula_downward_rotation_left, :scapula_downward_rotation_right],
			elbow_attributes: [:assessment_id, :elbow_flexion_supination_left, :elbow_flexion_supination_right, :elbow_extension_supination_left, :elbow_extension_supination_right, :elbow_flexion_neutral_left, :elbow_flexion_neutral_right, :elbow_extension_neutral_left, :elbow_extension_neutral_right, :elbow_flexion_pronation_left, :elbow_flexion_pronation_right, :elbow_extension_pronation_left, :elbow_extension_pronation_right],
			wrist_attributes: [:assessment_id, :wrist_flexion_left, :wrist_flexion_right, :wrist_extension_left, :wrist_extension_right, :wrist_radial_deviation_left, :wrist_radial_deviation_right, :wrist_ulnar_deviation_left, :wrist_ulnar_deviation_right],
			ankle_attributes: [:assessment_id, :ankle_plantar_flexion_left, :ankle_plantar_flexion_right, :ankle_dorsiflexion_left, :ankle_dorsiflexion_right, :ankle_inversion_left, :ankle_inversion_right, :ankle_eversion_left, :ankle_eversion_right],
			core_attributes: [:assessment_id, :trunk_lateral_flexion_left, :trunk_lateral_flexion_right, :trunk_rotation_left, :trunk_rotation_right, :trunk_flexion, :trunk_extension, :pelvic_stability]
			)
	end
end
