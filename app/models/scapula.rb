class Scapula < ApplicationRecord
  belongs_to :assessment

  validates :scapula_elevation_left, :scapula_elevation_right, :scapula_depression_left, :scapula_depression_right,
            :scapula_protraction_left, :scapula_protraction_right, :scapula_retraction_left, :scapula_retraction_right,
            :scapula_upward_rotation_left, :scapula_upward_rotation_right, :scapula_downward_rotation_left, :scapula_downward_rotation_right,
            presence: true

  def overall_average
    (scapula_elevation_left + scapula_elevation_right + scapula_depression_left + scapula_depression_right + scapula_protraction_left + scapula_protraction_right + scapula_retraction_left + scapula_retraction_right + scapula_upward_rotation_left + scapula_upward_rotation_right + scapula_downward_rotation_left + scapula_downward_rotation_right)/12
  end

  def elevation_depression_difference_left
  	JointBalanceService.calculate_differences(scapula_elevation_left, scapula_depression_left )
  end

  def elevation_depression_difference_right
  	JointBalanceService.calculate_differences(scapula_elevation_right, scapula_depression_right)
  end

  def elevation_difference
	 JointBalanceService.calculate_differences(scapula_elevation_left, scapula_elevation_right)
  end

  def depression_difference
	 JointBalanceService.calculate_differences(scapula_depression_left, scapula_depression_right)
  end

  def protraction_retraction_difference_left
  	JointBalanceService.calculate_differences(scapula_protraction_left, scapula_retraction_left)
  end

  def protraction_retraction_difference_right
  	JointBalanceService.calculate_differences(scapula_protraction_right, scapula_retraction_right)
  end

  def protraction_difference
	 JointBalanceService.calculate_differences(scapula_protraction_left, scapula_protraction_right)
  end

  def retraction_difference
	 JointBalanceService.calculate_differences(scapula_retraction_left, scapula_retraction_right)
  end

  def upward_downward_rotation_difference_left
  	JointBalanceService.calculate_differences(scapula_upward_rotation_left, scapula_downward_rotation_left)
  end

  def upward_downward_rotation_difference_right
  	JointBalanceService.calculate_differences(scapula_upward_rotation_right, scapula_downward_rotation_right)
  end

  def upward_rotation_difference
	 JointBalanceService.calculate_differences(scapula_upward_rotation_left, scapula_upward_rotation_right)
  end

  def downward_rotation_difference
	 JointBalanceService.calculate_differences(scapula_downward_rotation_left, scapula_downward_rotation_right)
  end

  #Joint Deviation

  def percent_deviation_scapula_elevation_left
    JointBalanceService.joint_deviation_difference(scapula_elevation_left, overall_average)
  end

  def percent_deviation_scapula_elevation_right
    JointBalanceService.joint_deviation_difference(scapula_elevation_right, overall_average)
  end

  def percent_deviation_scapula_depression_left
    JointBalanceService.joint_deviation_difference(scapula_depression_left, overall_average)
  end

  def percent_deviation_scapula_depression_right
    JointBalanceService.joint_deviation_difference(scapula_depression_right, overall_average)
  end

  def percent_deviation_scapula_protraction_left
    JointBalanceService.joint_deviation_difference(scapula_protraction_left, overall_average)
  end

  def percent_deviation_scapula_protraction_right
    JointBalanceService.joint_deviation_difference(scapula_protraction_right, overall_average)
  end

  def percent_deviation_scapula_retraction_left
    JointBalanceService.joint_deviation_difference(scapula_retraction_left, overall_average)
  end

  def percent_deviation_scapula_retraction_right
    JointBalanceService.joint_deviation_difference(scapula_retraction_right, overall_average)
  end

  def percent_deviation_scapula_upward_rotation_left
    JointBalanceService.joint_deviation_difference(scapula_upward_rotation_left, overall_average)
  end

  def percent_deviation_scapula_upward_rotation_right
    JointBalanceService.joint_deviation_difference(scapula_upward_rotation_right, overall_average)
  end

  def percent_deviation_scapula_downward_rotation_left
    JointBalanceService.joint_deviation_difference(scapula_downward_rotation_left, overall_average)
  end

  def percent_deviation_scapula_downward_rotation_right
    JointBalanceService.joint_deviation_difference(scapula_downward_rotation_right, overall_average)
  end

end
