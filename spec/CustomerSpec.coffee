{Customer} = require "../src/models/characters"

describe "Customer Class", ->	
	it "should set a name", ->
		# Arange
		props = {
			firstName: "Chris",
			lastName: "Mumford"
		}
		# Act
		sut = new Customer props
		# Assert				 
		expect(sut.firstName).toBe "Chris"
		
	it "should set a wallet value", ->
		# Arange
		props = {
			wallet: 22.34
		}
		# Act
		sut = new Customer props
		# Assert				 
		expect(sut.wallet).toEqual 22.34
		
		
	it "should set wallet value as float", ->
		# Arange
		props = {
			wallet: 10.2
		}
		# Act
		sut = new Customer props
		# Assert				 
		expect(sut.wallet).toBe 10.20