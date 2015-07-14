require './lib/vehicle'

class Car < Vehicle
    def move
        puts 'Moving...'
    end

    def turn_off
        puts 'Stoping...'
        super()
    end
end