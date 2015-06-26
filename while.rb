class Car
    attr_accessor :qty_fuel

    def has_fuel?
        @qty_fuel > 0
    end

    def moving
        while has_fuel?
            puts "Car is moving. Its has #{@qty_fuel} liter(s) of fuel."
            @qty_fuel = @qty_fuel - 1
        end
    end
end

car = Car.new
car.qty_fuel = 12
car.moving