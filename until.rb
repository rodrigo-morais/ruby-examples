class Car
    attr_accessor :qty_fuel

    def has_fuel?
        @qty_fuel > 0
    end

    def add_fuel(fuel)
        @qty_fuel = fuel
    end

    def stopped
      puts "Car is stopped."
    end

    def moving
        while has_fuel?
            puts "Car is moving. Its has #{@qty_fuel} liter(s) of fuel."
            @qty_fuel = @qty_fuel - 1
        end
    end
end

car = Car.new
car.qty_fuel = 0
until car.has_fuel?
  car.stopped
  puts "Add fuel to car?"
  answer = gets.strip
  if answer.upcase.eql?("S") then
    puts "How many fuel?"
    car.add_fuel(gets.to_i)
  end
end