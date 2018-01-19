def client_attributes(overrides = {})
	{
		id: 1,
		name: "David Blessing",
		email: "dave@tnthealthandfitness.com", 
		phone: "573-517-8700", 
		date_of_birth: "03-02-1987", 
		home_address: "Cape Girardeau, MO"
	}.merge(overrides)
end

def assessment_attributes(overrides = {})
	{
		client_id: 1,
		knee_id: 1
	}.merge(overrides)
end