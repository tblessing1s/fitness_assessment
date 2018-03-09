class JointBalanceService

	def self.joint_difference(movement1, movement2)
		(movement1 - movement2).abs/((movement1 + movement2)/2.to_f)*100
	end

	def self.balance(percentage)
		if (0...4.9).include?(percentage)
			return 'Good Balance'
		elsif (5...9.9).include?(percentage)
			return 'Level 1 Imbalance'
		elsif (10...14.9).include?(percentage)
			return 'Level 2 Imbalance'
		elsif percentage >= 15
			return 'Level 3 Imbalance'
		else
			return 'Balance could not be calculated'
		end			
	end

	def self.calculate_differences(param1, param2)
		percentage = self.joint_difference(param1, param2)
	  	category = self.balance(percentage)
	  	return { :percentage => percentage, :category => category }
	end

	def self.joint_deviation_calculation(param3, param4)
		(param3/((param4).to_f))*100
	end

	def self.joint_deviation_difference(joint, overall_average)
		percentage = self.joint_deviation_calculation(joint, overall_average)
		category = self.balance(percentage)
		return { :percentage => percentage, :category => category }
	end
end