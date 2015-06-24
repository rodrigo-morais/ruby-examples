class Car
    @@distance = 600

    def self.autonomy
        puts "The autonomy is #{@@distance}."
    end
end

class Ship
    @@distance = 4000

    def self.autonomy
        puts "The autonomy is #{@@distance}."
    end
end

puts "Car"
Car.autonomy()

puts ""
puts "Ship"

Ship.autonomy()