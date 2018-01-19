require 'rails_helper'

describe "Editing a Client" do

	it "updates and shows the client's information" do
		client = Client.create(client_attributes)
	
		visit client_url(client)

		click_link 'Edit Client'

		expect(current_path).to eq(edit_client_path(client))

		expect(find_field('Name').value).to eq(client.name)

	end

end