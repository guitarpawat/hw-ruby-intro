# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.length == 0
  total = 0
  arr.each {|x| total += x}
  return total
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  b = arr.sort {|x,y| y <=> x}
  b[0] + b[1]
end

def sum_to_n? arr, n
  return false if arr.length == 0 or arr.length == 1
  for i in 0...arr.length do
    for j in (i+1)...arr.length do
      return true if arr[i] + arr[j] == n
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  /^([b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z])/.match s
end

def binary_multiple_of_4? s
  return true if s == "0" or s == "100"
  /(?:^[01]+100$)/.match s
end

# Part 3

# and /(0[\d\-]+)/.match isbn 

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize isbn,price
    raise ArgumentError unless price > 0.0 and isbn != ''
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$#{'%.02f' % @price}"
  end
end

# puts BookInStock.new("isbn1",10).respond_to? :price_as_string
# puts BookInStock.new("isbn1",10).price_as_string
# puts BookInStock.new("isbn1",10).respond_to? :price_as_string