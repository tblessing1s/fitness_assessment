require 'rails_helper'

describe "Navigating clients" do

	it "allows navigation from a client's information page to the list of clients" do
		client = Client.create(client_attributes)

		visit client_url(client)

		click_link "All Clients"

		expect(current_path).to eq(clients_path)
	end

	it "allows navigation from the list of clients to a client's information page" do
		client = Client.create(client_attributes)

		visit clients_url
		click_link client.name

		expect(current_path).to eq(client_path(client))
	end
end