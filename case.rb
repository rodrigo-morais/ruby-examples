class Car
    attr_accessor :qty_fuel

    def show_panel_alerts
        case qty_fuel
          when 0..24
            puts "Turn on red light."
          when 25..50
            puts "Turn on yellow light."
          when 50..100
            puts "Turn on green light."
          else
            puts "Problem to evaluate the quantity of fuel."
        end
    end
end

car = Car.new()
car.qty_fuel = 12
car.show_panel_alerts()