class Shoulder < ApplicationRecord
  belongs_to :assessment

  validates :shoulder_flexion_left, :shoulder_flexion_right, :shoulder_extension_left, :shoulder_extension_right,
            :shoulder_abduction_left, :shoulder_abduction_right, :shoulder_adduction_left, :shoulder_adduction_right,
            :shoulder_internal_rotation_left, :shoulder_internal_rotation_right, :shoulder_external_rotation_left, :shoulder_external_rotation_right,
            :shoulder_horizontal_abduction_left, :shoulder_horizontal_abduction_right, :shoulder_horizontal_adduction_left, :shoulder_horizontal_adduction_right,
            presence: true

  	def overall_average
  		(shoulder_flexion_left + shoulder_flexion_right + shoulder_extension_left + shoulder_extension_right + shoulder_abduction_left + shoulder_abduction_right + shoulder_adduction_left + shoulder_adduction_right + shoulder_internal_rotation_left + shoulder_internal_rotation_right + shoulder_external_rotation_left + shoulder_external_rotation_right + shoulder_horizontal_abduction_left + shoulder_horizontal_abduction_right + shoulder_horizontal_adduction_left + shoulder_horizontal_adduction_right)/16
  	end

  	def flexion_extension_difference_left
  		JointBalanceService.calculate_differences(shoulder_flexion_left, shoulder_extension_left)
  	end

  	def flexion_extension_difference_right
  		JointBalanceService.calculate_differences(shoulder_flexion_right, shoulder_extension_right)
  	end

  	def flexion_difference
	 	JointBalanceService.calculate_differences(shoulder_flexion_left, shoulder_flexion_right)
  	end

  	def extension_difference
	 	JointBalanceService.calculate_differences(shoulder_extension_left, shoulder_extension_right)
  	end

  	def abduction_adduction_difference_left
		JointBalanceService.calculate_differences(shoulder_abduction_left, shoulder_adduction_left)
  	end

  	def abduction_adduction_difference_right
		JointBalanceService.calculate_differences(shoulder_abduction_right, shoulder_adduction_right)
  	end

  	def abduction_difference
		JointBalanceService.calculate_differences(shoulder_abduction_left, shoulder_abduction_right)
  	end

  	def adduction_difference
  		JointBalanceService.calculate_differences(shoulder_adduction_left, shoulder_adduction_right)
  	end

  	def internal_external_rotation_difference_left
  		JointBalanceService.calculate_differences(shoulder_internal_rotation_left, shoulder_external_rotation_left)
  	end

	def internal_external_rotation_difference_right
		JointBalanceService.calculate_differences(shoulder_internal_rotation_right, shoulder_external_rotation_right)
	end

	def internal_rotation_difference
		JointBalanceService.calculate_differences(shoulder_internal_rotation_left, shoulder_internal_rotation_right)
	end

	def external_rotation_difference
		JointBalanceService.calculate_differences(shoulder_external_rotation_left, shoulder_external_rotation_right)
	end

	def horizontal_abduction_adduction_difference_left
		JointBalanceService.calculate_differences(shoulder_horizontal_abduction_left, shoulder_horizontal_adduction_left)
  	end

	def horizontal_abduction_adduction_difference_right
		JointBalanceService.calculate_differences(shoulder_horizontal_abduction_right, shoulder_horizontal_adduction_right)
	end

	def horizontal_abduction_difference
		JointBalanceService.calculate_differences(shoulder_horizontal_abduction_left, shoulder_horizontal_abduction_right)
	end

	def horizontal_adduction_difference
		JointBalanceService.calculate_differences(shoulder_horizontal_adduction_left, shoulder_horizontal_adduction_right)
	end

  #Joint Deviation

  def percent_deviation_shoulder_flexion_left
    JointBalanceService.joint_deviation_difference(shoulder_flexion_left, overall_average)
  end

  def percent_deviation_shoulder_flexion_right
    JointBalanceService.joint_deviation_difference(shoulder_flexion_right, overall_average)
  end

  def percent_deviation_shoulder_extension_left
    JointBalanceService.joint_deviation_difference(shoulder_extension_left, overall_average)
  end

  def percent_deviation_shoulder_extension_right
    JointBalanceService.joint_deviation_difference(shoulder_extension_right, overall_average)
  end

  def percent_deviation_shoulder_abduction_left
    JointBalanceService.joint_deviation_difference(shoulder_abduction_left, overall_average)
  end

  def percent_deviation_shoulder_abduction_right
    JointBalanceService.joint_deviation_difference(shoulder_abduction_right, overall_average)
  end

  def percent_deviation_shoulder_adduction_left
    JointBalanceService.joint_deviation_difference(shoulder_adduction_left, overall_average)
  end

  def percent_deviation_shoulder_adduction_right
    JointBalanceService.joint_deviation_difference(shoulder_adduction_right, overall_average)
  end

  def percent_deviation_shoulder_internal_rotation_left
    JointBalanceService.joint_deviation_difference(shoulder_internal_rotation_left, overall_average)
  end

  def percent_deviation_shoulder_internal_rotation_right
    JointBalanceService.joint_deviation_difference(shoulder_internal_rotation_right, overall_average)
  end

  def percent_deviation_shoulder_external_rotation_left
    JointBalanceService.joint_deviation_difference(shoulder_external_rotation_left, overall_average)
  end

  def percent_deviation_shoulder_external_rotation_right
    JointBalanceService.joint_deviation_difference(shoulder_external_rotation_right, overall_average)
  end

  def percent_deviation_shoulder_horizontal_abduction_left
    JointBalanceService.joint_deviation_difference(shoulder_horizontal_abduction_left, overall_average)
  end

  def percent_deviation_shoulder_horizontal_abduction_right
    JointBalanceService.joint_deviation_difference(shoulder_horizontal_abduction_right, overall_average)
  end

  def percent_deviation_shoulder_horizontal_adduction_left
    JointBalanceService.joint_deviation_difference(shoulder_horizontal_adduction_left, overall_average)
  end

  def percent_deviation_shoulder_horizontal_adduction_right
    JointBalanceService.joint_deviation_difference(shoulder_horizontal_adduction_right, overall_average)
  end

end
