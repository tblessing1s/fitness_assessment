require 'rails_helper'

describe "Viewing the list of clients" do

	it "shows the clients name" do
		client1 = Client.create(name: "David Blessing",
								email: "dave@tnthealthandfitness.com", 
								phone: "573-517-8700", 
								date_of_birth: "03-02-1987", 
								home_address: "Cape Girardeau, MO")
		
		client2 = Client.create(name: "Tyler Blessing", 
								email: "tyler@tnthealthandfitness.com", 
								phone: "573-517-2916", 
								date_of_birth: "09-15-1993", 
								home_address: "Jackson, MO")

		client3 = Client.create(name: "Travis Blessing", 
								email: "travis@tnthealthandfitness.com", 
								phone: "573-517-2971", 
								date_of_birth: "09-18-1989", 
								home_address: "Cape Girardeau, MO")

		visit clients_url

		expect(page).to have_text("3 Clients")
		expect(page).to have_text(client1.name)
		expect(page).to have_text(client2.name)
		expect(page).to have_text(client3.name)
	end	

end