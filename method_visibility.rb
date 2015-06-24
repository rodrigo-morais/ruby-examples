class Vehicle
    def public_method
        puts "public_method"
    end

    protected

    def protected_method
        puts "protected_method"
    end

    private

    def private_method
        puts "private_method"
    end
end

class Car < Vehicle
    def public_method_2
        puts "public_method_2"
    end

    def call_protected_method
        protected_method()
    end

    private

    def private_method_2
        puts "private_method_2"
    end
end

puts "Car"
car = Car.new()
car.public_method()
car.call_protected_method()
#car.private_method() # can be called, because is private
car.public_method_2()
#car.private_method_2() # can be called, because is private