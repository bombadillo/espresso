class Animal
  price: 5

  sell: (customer) ->
      console.log customer.name

class Customer    
        
    constructor: (options={}) ->
      for key, val of options
        @[key] = val
    #@name = options.name ? "Ken"

    sayName: ->
        console.log "My name is " + @name

exports = this
exports.Animal = Animal
exports.Customer = Customer
