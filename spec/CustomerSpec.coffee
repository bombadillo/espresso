describe "Customer Basic", ->
	{Customer} = require "../src/models/characters"
	it "should set a name", ->
		customer = new Customer "Chris"
		expect(customer.name).toBe "Chris"