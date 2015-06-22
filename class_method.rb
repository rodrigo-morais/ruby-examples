class Calculator

  def double(val)
    val * 2
  end

  def multiply_three(val)
    val * 3
  end

end

calc = Calculator.new

puts "Double of 5 is #{calc.double(5)}"

puts "Triple of 5 is #{calc.multiply_three(5)}"