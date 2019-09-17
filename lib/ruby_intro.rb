# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |i|
    sum += i
  end
  return sum
end

def max_2_sum arr
  sum_2 = 0
  sum_2 = arr.sort.last(2).sum
end

def sum_to_n? arr, n
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  greeting = "Hello, "
  greeting_name = greeting + name
  return greeting_name
end

def starts_with_consonant? s
  if /\A(?=[^aeiouAEIOU])(?=[a-z])(?=[A-Z])/i.match(s)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  end
  if /^[01]*(00)$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN must not be empty.") if isbn.nil? || isbn.empty?
    raise ArgumentError.new("Price must be greater than 0.") if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    s = '%.2f' % @price
    sign = "$"
    format = sign + s
    return format
  end
  
end
