class Vehicle
    @@distance = 600
    @kilometer_liter = 20

    def self.autonomy
        puts "The autonomy is #{@@distance}."
    end

    def self.consumption
       puts "The consumption is #{@kilometer_liter}." 
    end
end

class Car < Vehicle
    @@distance = 400
    @kilometer_liter = 12

    def self.autonomy
        puts "The autonomy is #{@@distance}."
    end

    def self.consumption
       puts "The consumption is #{@kilometer_liter}." 
    end
end

class Ship < Vehicle
    @@distance = 5000
    @kilometer_liter = 70

    def self.autonomy
        puts "The autonomy is #{@@distance}."
    end

    def self.consumption
       puts "The consumption is #{@kilometer_liter}." 
    end
end

puts "Car"
Car.autonomy()
Car.consumption()

puts ""
puts "Ship"

Ship.autonomy()
Ship.consumption()