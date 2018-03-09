class Elbow < ApplicationRecord
  belongs_to :assessment

  validates :elbow_flexion_supination_left, :elbow_flexion_supination_right, :elbow_extension_supination_left, :elbow_extension_supination_right,
            :elbow_flexion_neutral_left, :elbow_flexion_neutral_right, :elbow_extension_neutral_left, :elbow_extension_neutral_right,
            :elbow_flexion_pronation_left, :elbow_flexion_pronation_right, :elbow_extension_pronation_left, :elbow_extension_pronation_right,
            presence: true

  def overall_average
    (elbow_flexion_supination_left + elbow_flexion_supination_right + elbow_extension_supination_left + elbow_extension_supination_right + elbow_flexion_neutral_left + elbow_flexion_neutral_right + elbow_extension_neutral_left + elbow_extension_neutral_right + elbow_flexion_pronation_left + elbow_flexion_pronation_right + elbow_extension_pronation_left + elbow_extension_pronation_right)/12
  end

  def flexion_extension_supination_difference_left
  	JointBalanceService.calculate_differences(elbow_flexion_supination_left, elbow_extension_supination_left )
  end

  def flexion_extension_supination_difference_right
  	JointBalanceService.calculate_differences(elbow_flexion_supination_right, elbow_extension_supination_right)
  end

  def flexion_supination_difference
	 JointBalanceService.calculate_differences(elbow_flexion_supination_left, elbow_flexion_supination_right)
  end

  def extension_supination_difference
	 JointBalanceService.calculate_differences(elbow_extension_supination_left, elbow_extension_supination_right)
  end

  def flexion_extension_neutral_difference_left
  	JointBalanceService.calculate_differences(elbow_flexion_neutral_left, elbow_extension_neutral_left)
  end

  def flexion_extension_neutral_difference_right
  	JointBalanceService.calculate_differences(elbow_flexion_neutral_right, elbow_extension_neutral_right)
  end

  def flexion_neutral_difference
	 JointBalanceService.calculate_differences(elbow_flexion_neutral_left, elbow_flexion_neutral_right)
  end

  def extension_neutral_difference
	 JointBalanceService.calculate_differences(elbow_extension_neutral_left, elbow_extension_neutral_right)
  end

  def flexion_extension_pronation_difference_left
  	JointBalanceService.calculate_differences(elbow_flexion_pronation_left, elbow_extension_pronation_left)
  end

  def flexion_extension_pronation_difference_right
  	JointBalanceService.calculate_differences(elbow_flexion_pronation_right, elbow_extension_pronation_right)
  end

  def flexion_pronation_difference
	 JointBalanceService.calculate_differences(elbow_flexion_pronation_left, elbow_flexion_pronation_right)
  end

  def extension_pronation_difference
	 JointBalanceService.calculate_differences(elbow_extension_pronation_left, elbow_extension_pronation_right)
  end

  #Joint Deviation

  def percent_deviation_elbow_flexion_supination_left
    JointBalanceService.joint_deviation_difference(elbow_flexion_supination_left, overall_average)
  end

  def percent_deviation_elbow_flexion_supination_right
    JointBalanceService.joint_deviation_difference(elbow_flexion_supination_right, overall_average)
  end

  def percent_deviation_elbow_extension_supination_left
    JointBalanceService.joint_deviation_difference(elbow_extension_supination_left, overall_average)
  end

  def percent_deviation_elbow_extension_supination_right
    JointBalanceService.joint_deviation_difference(elbow_extension_supination_right, overall_average)
  end

  def percent_deviation_elbow_flexion_neutral_left
    JointBalanceService.joint_deviation_difference(elbow_flexion_neutral_left, overall_average)
  end

  def percent_deviation_elbow_flexion_neutral_right
    JointBalanceService.joint_deviation_difference(elbow_flexion_neutral_right, overall_average)
  end

  def percent_deviation_elbow_extension_neutral_left
    JointBalanceService.joint_deviation_difference(elbow_extension_neutral_left, overall_average)
  end

  def percent_deviation_elbow_extension_neutral_right
    JointBalanceService.joint_deviation_difference(elbow_extension_neutral_right, overall_average)
  end

  def percent_deviation_elbow_flexion_pronation_left
    JointBalanceService.joint_deviation_difference(elbow_flexion_pronation_left, overall_average)
  end

  def percent_deviation_elbow_flexion_pronation_right
    JointBalanceService.joint_deviation_difference(elbow_flexion_pronation_right, overall_average)
  end

  def percent_deviation_elbow_extension_pronation_left
    JointBalanceService.joint_deviation_difference(elbow_extension_pronation_left, overall_average)
  end

  def percent_deviation_elbow_extension_pronation_right
    JointBalanceService.joint_deviation_difference(elbow_extension_pronation_right, overall_average)
  end

end
