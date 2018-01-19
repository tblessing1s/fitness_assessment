require 'rails_helper'

describe "Create a New Client" do

	it "saves their information and shows it on the clients information" do
		visit clients_url

		click_link 'Create New Client'

		expect(current_path).to eq(new_client_path)
		fill_in 'Name', with: "David Blessing"
		fill_in 'Email', with: "dave@tnthealthandfitness.com"
		fill_in 'Phone', with: "573-517-8700"
		fill_in "Date of birth", with: '03-02-1987'
		fill_in 'Home address', with: "Cape Girardeau, MO"

		click_button 'Create Client'

		expect(current_path).to eq(client_path(Client.last))

		expect(page).to have_text('David Blessing')

	end

end