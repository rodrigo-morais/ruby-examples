sum = 0

[1,3,5,7,9].each do |number|
    sum = sum + number
end

p "Sum: #{sum}"

def print_numbers
    number = 42
    yield
end

def call_print_numbers
    number = 123
    print_numbers do
        p "The number value is: #{number}"
    end
end

call_print_numbers