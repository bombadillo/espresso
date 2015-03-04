class Customer
    name: "unknown"

    constructor: (name) ->
        @name = name

    sayName: ->
        console.log "my name is " + @name

class Animal
  price: 5 

  sell: (customer) ->
      console.log customer.name

animal = new Animal
animal.sell(new Customer "Frank")
animal.sell(new Customer "Bob")
