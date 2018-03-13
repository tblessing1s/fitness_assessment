class Hip < ApplicationRecord
  belongs_to :assessment

  validates :hip_flexion_right, :hip_flexion_left, :hip_extension_left, :hip_extension_right, 
  			:hip_abduction_left, :hip_abduction_right, :hip_adduction_left, :hip_adduction_right,
  			:hip_internal_rotation_90_left, :hip_internal_rotation_90_right, :hip_external_rotation_90_left, :hip_external_rotation_90_right, 
  			presence: true

  	def overall_average
  		(hip_flexion_right + hip_flexion_left + hip_extension_left + hip_extension_right + hip_abduction_left + hip_abduction_right + hip_adduction_left + hip_adduction_right + hip_internal_rotation_90_left + hip_internal_rotation_90_right + hip_external_rotation_90_left + hip_external_rotation_90_right )/12
  	end

	def flexion_extension_difference_left
  		JointBalanceService.calculate_differences(hip_flexion_left, hip_extension_left)
	end

	def flexion_extension_difference_right
  		JointBalanceService.calculate_differences(hip_flexion_right, hip_extension_right)
	end

	def flexion_difference
	 	JointBalanceService.calculate_differences(hip_flexion_left, hip_flexion_right)
	end

	def extension_difference
	 	JointBalanceService.calculate_differences(hip_extension_left, hip_extension_right)
	end

	def abduction_adduction_difference_left
		JointBalanceService.calculate_differences(hip_abduction_left, hip_adduction_left)
	end

	def abduction_adduction_difference_right
		JointBalanceService.calculate_differences(hip_abduction_right, hip_adduction_right)
	end

  	def abduction_difference
		JointBalanceService.calculate_differences(hip_abduction_left, hip_abduction_right)
  	end

	def adduction_difference
  		JointBalanceService.calculate_differences(hip_adduction_left, hip_adduction_right)
  	end

  	def internal_external_rotation_90_difference_left
  		JointBalanceService.calculate_differences(hip_internal_rotation_90_left, hip_external_rotation_90_left)
  	end

	def internal_external_rotation_90_difference_right
		JointBalanceService.calculate_differences(hip_internal_rotation_90_right, hip_external_rotation_90_right)
	end

	def internal_rotation_90_difference
		JointBalanceService.calculate_differences(hip_internal_rotation_90_left, hip_internal_rotation_90_right)
	end

	def external_rotation_90_difference
		JointBalanceService.calculate_differences(hip_external_rotation_90_left, hip_external_rotation_90_right)
	end

	#Joint Deviation
	def percent_deviation_hip_flexion_right
    	JointBalanceService.joint_deviation_difference(hip_flexion_right, overall_average)
 	end

	def percent_deviation_hip_flexion_left
    	JointBalanceService.joint_deviation_difference(hip_flexion_left, overall_average)
 	end

	def percent_deviation_hip_extension_left
    	JointBalanceService.joint_deviation_difference(hip_extension_left, overall_average)
 	end
 	
	def percent_deviation_hip_extension_right
    	JointBalanceService.joint_deviation_difference(hip_extension_right, overall_average)
 	end

	def percent_deviation_hip_abduction_left
    	JointBalanceService.joint_deviation_difference(hip_abduction_left, overall_average)
 	end

	def percent_deviation_hip_abduction_right
    	JointBalanceService.joint_deviation_difference(hip_abduction_right, overall_average)
 	end 	

	def percent_deviation_hip_adduction_left
    	JointBalanceService.joint_deviation_difference(hip_adduction_left, overall_average)
 	end
 	
	def percent_deviation_hip_adduction_right
    	JointBalanceService.joint_deviation_difference(hip_adduction_right, overall_average)
 	end
 	
	def percent_deviation_hip_internal_rotation_90_left
    	JointBalanceService.joint_deviation_difference(hip_internal_rotation_90_left, overall_average)
 	end

	def percent_deviation_hip_internal_rotation_90_right
    	JointBalanceService.joint_deviation_difference(hip_internal_rotation_90_right, overall_average)
 	end
 	
	def percent_deviation_hip_external_rotation_90_left
    	JointBalanceService.joint_deviation_difference(hip_external_rotation_90_left, overall_average)
 	end
 	
	def percent_deviation_hip_external_rotation_90_right
    	JointBalanceService.joint_deviation_difference(hip_external_rotation_90_right, overall_average)
 	end
 	
end
