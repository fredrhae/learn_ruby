def add number1, number2
	addition = number1 + number2
end

def subtract number1, number2
	subtraction = number1 - number2
end

def sum numbers
	sum = numbers.inject(0,:+)
end

def multiply number1, number2
	multiplication = number1 * number2
end

def multiply_many  numbers
	multiplication = numbers.inject(:*)
end

def power number1, number2
	power = number1 ** number2
end

def factorial number
	factorial = (1..number).inject(1,:*)
end
