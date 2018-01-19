require 'rails_helper'

describe "Create an Assessment" do

	it "selecting the client that is getting assessed" do
		client = Client.create!(client_attributes)	
		assessment.client = assessment
		visit clients_url

		click_link 'Start New Assessment>>'

		expect(current_path).to eq(new_assessment_path)

		select('David Blessing')

		click_button 'Begin Assessment >>'
		expect(current_path).to eq(new_assessment_knee_path(assessment))
	end


end