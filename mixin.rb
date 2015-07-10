module Alarm
    def trigger
        puts "The alarm is ringing..."
    end
end

module Description
    def describe
        puts "It is a vehicle."
    end
end

class Vehicle
    include Alarm
    extend Description

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

Vehicle.describe
#Vehicle.trigger #Return an error because this method was included to use as an object method

car = Vehicle.new
#car.describe #Return an error because this method was extended to use as a class method
car.turn_on
car.move
car.stop
car.trigger