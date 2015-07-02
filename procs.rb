class Car
    attr_accessor :model, :price, :color

    def info(&block)
        puts "The model of car is #{model}"
        block.call
    end

    def on_sale(&block)
        puts "The car is on sale!"
        block.call @price
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
block_var = Proc.new do |price|
    price = price - (price * 0.25)
    puts "The price of car is #{price}"
end
car.on_sale &block_var