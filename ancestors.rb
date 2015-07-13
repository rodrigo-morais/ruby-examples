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

module Alarm
    def trigger
        puts "The alarm is ringing..."
    end

    def stop
        super()
        puts "The alarm stop."
    end
end

class Car < Vehicle
    #include Alarm
    prepend Alarm
    def move
        puts "Moving on the road."
    end

    def stop
        super()
        puts "Stopped in a parklot."
    end
end

puts 'Testing include vs. prepend to present the result.'
puts Car.ancestors

car = Car.new
car.stop

