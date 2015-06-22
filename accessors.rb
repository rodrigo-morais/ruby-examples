class Trip
  attr_accessor :destination
  attr_writer :name
  attr_reader :price
  
  def initialize
    @price = 504.89 #access the variable (attribute)
  end

  def cancel
      self.destination = '' #access set method
  end

  def change_price(new_price)
    @price = new_price #access variable (attribute)
  end
end

trip = Trip.new()

trip.destination = "San Francisco"
puts trip.destination

trip.name = "Happiness"
#puts trip.name #error because not exist get method to name

#trip.price = 1000 #error because not exist set method to price
puts trip.price
trip.change_price(123.98)
puts trip.price

trip.cancel
puts trip.destination