require 'rails_helper'

describe "Record a client's knee strength" do

	it "records the data for the knee" do
		client = Client.create!(client_attributes)
		assessment = Assessment.create!(assessment_attributes)

		visit new_assessment_knee_path(assessment)

		fill_in 'Knee flexion left', with: 123
		fill_in 'Knee flexion right', with: 124

		click_button 'Submit Knee Strength'

		expect(current_path).to eq(assessment_path(Assessment.last))
		expect(page).to have_text(client.name)
		expect(page).to have_text()
		expect(page).to have_text(124)
	end
end