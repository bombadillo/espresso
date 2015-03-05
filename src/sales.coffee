class Customer
    name: "unknown"

    constructor: (name, wallet = 0.00) ->
        @name = name
        @wallet = wallet

    sayName: ->
        console.log "my name is " + @name

class Animal
  price: 5

  sell: (customer) ->
      console.log customer.name

animal = new Animal

performSales = ->
    animal.sell(new Customer "Frank")
    animal.sell(new Customer "Bob")
    animal.sell(new Customer "Chris")
    animal.sell(new Customer "Laura")
    animal.sell(new Customer "Luke")
    animal.sell(new Customer "Peter")
    animal.sell(new Customer "David")
    animal.sell(new Customer "David2")
