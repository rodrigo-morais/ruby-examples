module Factory
    class Vehicle
        def turn_on
            puts "Turn on the vehicle."
        end

        def move
            puts "Moving..."
        end

        def stop
            puts "Stopping."
        end
    end
end

car = Factory::Vehicle.new

car.turn_on
car.move
car.stop