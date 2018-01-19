require 'rails_helper'

describe "Viewing an individual client" do

	it "shows the client's information" do
		client = Client.create(client_attributes)
	

		visit client_url(client)

		expect(page).to have_text(client.name)
		expect(page).to have_text(client.email)
		expect(page).to have_text(client.phone)
		expect(page).to have_text(client.date_of_birth)
		expect(page).to have_text(client.home_address)
	end

	it "shows the clients previous assessments" do
		client = Client.create!(client_attributes)
		assessment = Assessment.create!(assessment_attributes)

		visit client_url(client)

		click_link 'Past Assessments'

		expect(current_path).to eq(client_assessments_path(client))

		expect(page).to have_link(assessment.created_at, assessment_path(assessment))

		expect(page).to have_text(client.name)
	end
end