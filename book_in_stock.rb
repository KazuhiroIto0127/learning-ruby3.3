# frozen_string_literal: true

# Represents a book with an ISBN and a price.
# This class provides a way to initialize and display book details.
#
# @example
#   book = BookInStock.new("978-3-16-148410-0", 29.99)
#   puts book.to_s # => "ISBN: 978-3-16-148410-0, Price: 29.99"
#
# @see https://ruby-doc.org/core-3.3.0/Class.html Ruby Class Documentation
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def to_s
    "ISBN: #{@isbn}, Price: #{@price}"
  end
end

b1 = BookInStock.new('12345', 29.99)
puts b1
b2 = BookInStock.new('67890', 39.99)
puts b2
