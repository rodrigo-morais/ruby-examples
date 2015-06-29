class Car
    attr_accessor :qty_fuel

    def initialize
        @qty_fuel = 0
    end

    def has_fuel?
        @qty_fuel > 0
    end

    def moving
        begin
            puts "Car is moving. Its has #{@qty_fuel} liter(s) of fuel."
            @qty_fuel = @qty_fuel - 1
        end while has_fuel?
    end
end

car = Car.new
puts "Car without fuel moving once."
car.moving