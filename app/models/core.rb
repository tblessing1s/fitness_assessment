class Core < ApplicationRecord
  belongs_to :assessment

  validates :trunk_lateral_flexion_left, :trunk_lateral_flexion_right, :trunk_rotation_left, :trunk_rotation_right,
            :trunk_flexion, :trunk_extension, :pelvic_stability,
            presence: true

  def overall_average
    ((trunk_lateral_flexion_left + trunk_lateral_flexion_right + trunk_rotation_left + trunk_rotation_right + trunk_flexion + trunk_extension + pelvic_stability)/7)
  end

  def trunk_lateral_flexion_difference
  	JointBalanceService.calculate_differences(trunk_lateral_flexion_left, trunk_lateral_flexion_right)
  end

  def trunk_rotation_difference
  	JointBalanceService.calculate_differences(trunk_rotation_left, trunk_rotation_right)
  end

  def trunk_flexion_extension_difference
	 JointBalanceService.calculate_differences(trunk_flexion, trunk_extension)
  end

  #Joint Deviation

  def percent_deviation_trunk_lateral_flexion_left
    JointBalanceService.joint_deviation_difference(trunk_lateral_flexion_left, overall_average)
  end

  def percent_deviation_trunk_lateral_flexion_right
    JointBalanceService.joint_deviation_difference(trunk_lateral_flexion_right, overall_average)
  end

  def percent_deviation_trunk_rotation_left
    JointBalanceService.joint_deviation_difference(trunk_rotation_left, overall_average)
  end

  def percent_deviation_trunk_rotation_right
    JointBalanceService.joint_deviation_difference(trunk_rotation_right, overall_average)
  end

  def percent_deviation_trunk_flexion
    JointBalanceService.joint_deviation_difference(trunk_flexion, overall_average)
  end

  def percent_deviation_trunk_extension
    JointBalanceService.joint_deviation_difference(trunk_extension, overall_average)
  end

  def percent_deviation_pelvic_stability
    JointBalanceService.joint_deviation_difference(pelvic_stability, overall_average)
  end

end
