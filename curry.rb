multiplier = lambda {|x,y| x*y}.curry

double = multiplier.call(2)
triple = multiplier.call(3)

p 'Double:'
p '13'
p double.call(13)
p '43'
p double.call(43)

p ''
p 'Triple:'
p '13'
p triple.call 13
p '43'
p triple.call 43

pow = Proc.new do |x, y|
    y ** x
end.curry

square = pow.call(2)

p ''
p 'Square'
p '3'
p square.call(3)
p '5'
p square.call(5)