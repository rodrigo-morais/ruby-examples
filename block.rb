class Car
    attr_accessor :model, :price, :color

    def info
        puts "The model of car is #{model}"
        yield if block_given?
    end

    def on_sale
        puts "The car is on sale!"
        yield @price
    rescue Exception => e
        puts e.message + " - block not informed"
        false
    end
end

car = Car.new()
car.model = "Megane"
car.color = "black"
car.price = 45000

puts "Simple text"
car.info do
    puts "Test the block"
end

puts ""
puts "Text with an attribute of object"
car.info do
    puts "The color of car #{car.color}"
end

puts ""
puts "Block with variable"
car.on_sale do |price|
    price = price - (price * 0.25)
    puts "The price of car is #{price}"
end

puts ""
puts "Error when block isn't informed"
car.on_sale

puts ""
puts "Call method that wait a block, but not pass a block. The method not return error because the execution of block is treated"
car.info