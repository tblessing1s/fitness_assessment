class Knee < ApplicationRecord
  belongs_to :assessment, inverse_of: :knee

  validates :knee_flexion_left, :knee_flexion_right, :knee_extension_left, :knee_extension_right, presence: true

  def overall_average
    (knee_flexion_left + knee_flexion_right + knee_extension_left + knee_extension_right)/4
  end

  def flexion_extension_difference_left
  	JointBalanceService.calculate_differences(knee_flexion_left, knee_extension_left)
  end

  def flexion_extension_difference_right
  	JointBalanceService.calculate_differences(knee_flexion_right, knee_extension_right)
  end

  def flexion_difference
	 JointBalanceService.calculate_differences(knee_flexion_left, knee_flexion_right)
  end

  def extension_difference
	 JointBalanceService.calculate_differences(knee_extension_left, knee_extension_right)
  end

  #Joint Deviation

  def percent_deviation_flexion_left
    JointBalanceService.joint_deviation_difference(knee_flexion_left, overall_average)
  end

  def percent_deviation_flexion_right
    JointBalanceService.joint_deviation_difference(knee_flexion_right, overall_average)
  end

    def percent_deviation_extension_left
    JointBalanceService.joint_deviation_difference(knee_extension_left, overall_average)
  end

  def percent_deviation_extension_right
    JointBalanceService.joint_deviation_difference(knee_extension_right, overall_average)
  end

  def percent_deviation
    joints = [knee_flexion_left, knee_flexion_right, knee_extension_left, knee_extension_right]
    joints.each do |joint|
      answer = JointBalanceService.joint_deviation_difference(joint, overall_average)
      puts answer
    end
  end
end
