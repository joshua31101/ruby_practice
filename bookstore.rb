class BookInStock

  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

  def price_in_cents
    Integer(price*100 + 0.5)
  end
end

b1 = BookInStock.new("isbn1", 3)
puts "ISBN: #{b1.isbn}"
puts "Price: #{b1.price}"
puts "Price in cents: #{b1.price_in_cents}"
