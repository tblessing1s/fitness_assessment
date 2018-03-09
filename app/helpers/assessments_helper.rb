module AssessmentsHelper
	
	def muscle_balance(category, percentage)
		case category

		when 'Good Balance'
			content_tag(:div, number_to_percentage(percentage), class: ["bg-success", "text-white"])
		when 'Level 1 Imbalance'
			content_tag(:div, number_to_percentage(percentage), class: ["bg-level-one-imbalance", "text-gray"])
		when 'Level 2 Imbalance'
			content_tag(:div, number_to_percentage(percentage), class: ["bg-level-two-imbalance", "text-black"])	
		when 'Level 3 Imbalance'
			content_tag(:div, number_to_percentage(percentage), class: ["bg-level-three-imbalance", "text-white"])
		else

		end
	end

	def joint_data
		[
			{name: "Core", data: @assessment.core.overall_average}
		]
	end
end
