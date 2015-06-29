class Car
    attr_accessor :name
end

cars = []
for number in (1..100)
    car = Car.new()
    car.name = "Car #{number}"
    cars.push(car)
end

cars.each do |car|
  puts "Car name: #{car.name}"
end