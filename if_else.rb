class Car
    attr_accessor :qty_fuel

    def show_light
        if @qty_fuel < 25 then
            puts "Turn on red light"
        elsif @qty_fuel < 50 then
            puts "Turn on yellow light"
        else
            puts "Turn on green light"
        end
    end

    def has_fuel?
        @qty_fuel > 0
    end

    def move
        puts "Moving..." if has_fuel?
    end

    def stop
        unless has_fuel?
            puts "Stoping..."
        end
    end
end

car = Car.new()
puts "Adding 24 liters of gas to car."
car.qty_fuel = 24
car.show_light

puts ""
puts "Adding 34 liters of gas to car."
car.qty_fuel = 34
car.show_light

puts ""
puts "Adding 63 liters of gas to car."
car.qty_fuel = 63
car.show_light
puts "Car has fuel!" if car.has_fuel?
car.move
car.stop

puts ""
puts "Remove gas from car."
car.qty_fuel = 0
puts "Car doesn't have fuel!" unless car.has_fuel?
car.move
car.stop