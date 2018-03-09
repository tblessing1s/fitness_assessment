class Wrist < ApplicationRecord
  belongs_to :assessment

  validates :wrist_flexion_left, :wrist_flexion_right, :wrist_extension_left, :wrist_extension_right,
            :wrist_radial_deviation_left, :wrist_radial_deviation_right, :wrist_ulnar_deviation_left, :wrist_ulnar_deviation_right,
            presence: true

  def overall_average
    (wrist_flexion_left + wrist_flexion_right + wrist_extension_left + wrist_extension_right + wrist_radial_deviation_left + wrist_radial_deviation_right + wrist_ulnar_deviation_left + wrist_ulnar_deviation_right)/8
  end

  def flexion_extension_difference_left
  	JointBalanceService.calculate_differences(wrist_flexion_left, wrist_extension_left)
  end

  def flexion_extension_difference_right
  	JointBalanceService.calculate_differences(wrist_flexion_right, wrist_extension_right)
  end

  def flexion_difference
	 JointBalanceService.calculate_differences(wrist_flexion_left, wrist_flexion_right)
  end

  def extension_difference
	 JointBalanceService.calculate_differences(wrist_extension_left, wrist_extension_right)
  end

  def radial_ulnar_deviation_difference_left
  	JointBalanceService.calculate_differences(wrist_radial_deviation_left, wrist_ulnar_deviation_left)
  end

  def radial_ulnar_deviation_difference_right
  	JointBalanceService.calculate_differences(wrist_radial_deviation_right, wrist_ulnar_deviation_right)
  end

  def radial_deviation_difference
	 JointBalanceService.calculate_differences(wrist_radial_deviation_left, wrist_radial_deviation_right)
  end

  def ulnar_deviation_difference
	 JointBalanceService.calculate_differences(wrist_ulnar_deviation_left, wrist_ulnar_deviation_right)
  end

  #Joint Deviation

  def percent_deviation_wrist_flexion_left
    JointBalanceService.joint_deviation_difference(wrist_flexion_left, overall_average)
  end

  def percent_deviation_wrist_flexion_right
    JointBalanceService.joint_deviation_difference(wrist_flexion_right, overall_average)
  end

  def percent_deviation_wrist_extension_left
    JointBalanceService.joint_deviation_difference(wrist_extension_left, overall_average)
  end

  def percent_deviation_wrist_extension_right
    JointBalanceService.joint_deviation_difference(wrist_extension_right, overall_average)
  end

  def percent_deviation_wrist_radial_deviation_left
    JointBalanceService.joint_deviation_difference(wrist_radial_deviation_left, overall_average)
  end

  def percent_deviation_wrist_radial_deviation_right
    JointBalanceService.joint_deviation_difference(wrist_radial_deviation_right, overall_average)
  end

  def percent_deviation_wrist_ulnar_deviation_left
    JointBalanceService.joint_deviation_difference(wrist_ulnar_deviation_left, overall_average)
  end

  def percent_deviation_wrist_ulnar_deviation_right
    JointBalanceService.joint_deviation_difference(wrist_ulnar_deviation_right, overall_average)
  end

end
