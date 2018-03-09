module Upcoming
	extend ActiveSupport::Concern

	def upcoming_assessments(clients)
	    today = Date.today
	    up_to_date = []
	    upcoming = []
	    past_due = []
      	Assessment.most_recent(clients).each do |assessment|
          if (assessment.created_at + 3.weeks) > today
            up_to_date << assessment
          elsif ((assessment.created_at + 3.weeks)..(assessment.created_at + 4.weeks)).cover?(today)
            upcoming << assessment
          elsif (assessment.created_at + 4.weeks) < today
            past_due << assessment
          else
            return 'Assessment Not Found'
          end
      end
      return {'Up to Date' => up_to_date, 'Upcoming' => upcoming, 'Past Due' => past_due}
    end

end