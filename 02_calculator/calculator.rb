#write your code here

def add(a, b)
	a + b 
end

def subtract(a, b)
	a - b
end

def sum(a)
	sum = 0;
	a.each do |x|
		sum += x
	end
	sum
end

def multiply(numbers)
	result = 1
	numbers.each do |x|
		result *= x
	end
	result
end


def power(a,b)
	a**b
end

def factorial(a)
	result = 1
	while a > 0
		result *= a
		a -= 1
	end
	result
end

