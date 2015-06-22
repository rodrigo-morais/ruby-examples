car = 'car'
puts car
#puts car.plural #commented because not exist yet, and willl return an error

class String
    def plural
        "#{self}s"
    end
end

car = 'car'
puts car
puts car.plural