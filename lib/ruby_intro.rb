# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0) { |sum, element| sum + element }
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!
  sum(arr.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? { |x, y| x + y == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  regex = /^[aeiouAEIOU|^\W].*/
  !regex.match(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  regex = /^(0+|[01]+00)\z/
  regex.match(s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError unless price.positive?
    @isbn = isbn
    @price = price
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
