class Vehicle
    def turn_on
        puts "Turn on the vehicle."
    end

    def move
    end

    def stop
        puts "Stopping."
    end
end

class Car < Vehicle
    def move
        puts "Moving on the road."
    end

    def stop
        super()
        puts "Stopped in a parklot."
    end
end

class Ship < Vehicle
    def move
        puts "Moving on the water."
    end

    def stop
        super()
        puts "Stopped on the ocean."
    end
end

puts "Car"
car = Car.new()
car.turn_on()
car.move()
car.stop()

puts ""
puts "Ship"

ship = Ship.new()
ship.turn_on()
ship.move()
ship.stop()