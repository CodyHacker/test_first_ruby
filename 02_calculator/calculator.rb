def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(number_list)
	return 0 if number_list.length < 1
	number_list.reduce(:+)
end

def multiply(*numbers)
	return 0 if numbers.length < 1
	numbers.reduce(:*)
end

def power(x, n)
	x**n
end

def factorial(num)
	return 0 if num == 0
	(1..num).inject(:*)
end
