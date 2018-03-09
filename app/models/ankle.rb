class Ankle < ApplicationRecord
  belongs_to :assessment

  validates :ankle_plantar_flexion_left, :ankle_plantar_flexion_right, :ankle_dorsiflexion_left, :ankle_dorsiflexion_right,
            :ankle_inversion_left, :ankle_inversion_right, :ankle_eversion_left, :ankle_eversion_right,
            presence: true

  def overall_average
    (ankle_plantar_flexion_left + ankle_plantar_flexion_right + ankle_dorsiflexion_left + ankle_dorsiflexion_right + ankle_inversion_left + ankle_inversion_right + ankle_eversion_left + ankle_eversion_right)/8
  end

  def plantar_flexion_dorsiflexion_difference_left
  	JointBalanceService.calculate_differences(ankle_plantar_flexion_left, ankle_dorsiflexion_left)
  end

  def plantar_flexion_dorsiflexion_difference_right
  	JointBalanceService.calculate_differences(ankle_plantar_flexion_right, ankle_dorsiflexion_right)
  end

  def plantar_flexion_difference
	 JointBalanceService.calculate_differences(ankle_plantar_flexion_left, ankle_plantar_flexion_right)
  end

  def dorsiflexion_difference
	 JointBalanceService.calculate_differences(ankle_dorsiflexion_left, ankle_dorsiflexion_right)
  end

  def inversion_eversion_difference_left
  	JointBalanceService.calculate_differences(ankle_inversion_left, ankle_eversion_left)
  end

  def inversion_eversion_difference_right
  	JointBalanceService.calculate_differences(ankle_inversion_right, ankle_eversion_right)
  end

  def inversion_difference
	 JointBalanceService.calculate_differences(ankle_inversion_left, ankle_inversion_right)
  end

  def eversion_difference
	 JointBalanceService.calculate_differences(ankle_eversion_left, ankle_eversion_right)
  end

  #Joint Deviation

  def percent_deviation_ankle_plantar_flexion_left
    JointBalanceService.joint_deviation_difference(ankle_plantar_flexion_left, overall_average)
  end

  def percent_deviation_ankle_plantar_flexion_right
    JointBalanceService.joint_deviation_difference(ankle_plantar_flexion_right, overall_average)
  end

  def percent_deviation_ankle_dorsiflexion_left
    JointBalanceService.joint_deviation_difference(ankle_dorsiflexion_left, overall_average)
  end

  def percent_deviation_ankle_dorsiflexion_right
    JointBalanceService.joint_deviation_difference(ankle_dorsiflexion_right, overall_average)
  end

  def percent_deviation_ankle_inversion_left
    JointBalanceService.joint_deviation_difference(ankle_inversion_left, overall_average)
  end

  def percent_deviation_ankle_inversion_right
    JointBalanceService.joint_deviation_difference(ankle_inversion_right, overall_average)
  end

  def percent_deviation_ankle_eversion_left
    JointBalanceService.joint_deviation_difference(ankle_eversion_left, overall_average)
  end

  def percent_deviation_ankle_eversion_right
    JointBalanceService.joint_deviation_difference(ankle_eversion_right, overall_average)
  end

end
