class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def to_s
    "ISBN: #{@isbn}, Price: #{@price}"
  end
end

b1 = BookInStock.new("12345", 29.99)
puts b1
b2 = BookInStock.new("67890", 39.99)
puts b2
