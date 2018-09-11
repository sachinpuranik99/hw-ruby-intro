# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  # array.each { |x| puts x }
  @numbers = arr.sort
  sum @numbers.last(2)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  @numbers = arr.combination(2).map { |x, y| x + y }
  @numbers.include? n
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.tr('01','') != '' or s == ''
    return false
  end
  s.to_i(2)%4 == 0 
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn, :price
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  def isbn= (isbn)
    if isbn == ''
      raise ArgumentError
    end
    @isbn = isbn
  end

  def price= (price)
    price = price.to_f
    if price <= 0
      raise ArgumentError
    end
    @price = price
  end
  
  def price_as_string
    return "$" + sprintf("%.2f", price)
  end
end
