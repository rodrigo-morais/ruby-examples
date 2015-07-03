class Car
    attr_accessor :model, :price, :color

    def info(&block)
        puts "The model of car is #{model}"
        block.call(self)
    end

    def on_sale(&block)
        puts "The car is on sale!"
        block.call(@price)
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
lamb = lambda do |car|
    puts "Test the block"
end
car.info &lamb

puts ""
puts "Text with an attribute of object"
lamb = lambda { |car| puts "The color of car #{car.color}" }
car.info &lamb

puts ""
puts "Block with variable"
block_var = ->(price) {
    price = price - (price * 0.25)
    puts "The price of car is #{price}"
}
car.on_sale &block_var