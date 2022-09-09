# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr.first if arr.length == 1

  arr.sort.last(2).sum
end

def sum_to_n?(arr, number)
  return false if arr.empty? || arr.length == 1

  arr.each_with_index do |ele_i, i|
    arr[i + 1..].each do |ele_j|
      return true if ele_i + ele_j == number
    end
  end

  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  string.match(/^[b-d f-h j-n p-t v-z B-D F-H J-N P-T V-Z]/)
end

def binary_multiple_of_4?(string)
  return true if string == '0'
  return false if string.size < 3 || string.count('01') != string.size
  return true if string[-1] == '0' && string[-2] == '0'

  false
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "Invalid isbn provided, got #{isbn}" if isbn.nil? || isbn.empty?
    raise ArgumentError, "Price must be a positive number, got #{price}" if price.nil? || price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{format('%.2f', @price)}"
  end
end
