module Area
  def calculate
    area = 1
    sides.each {|s| area *= s}
    area
  end
end

class Square
  include Area
  def initialize(s)
    @size = s
  end

  def sides
    [@size, @size]
  end
end

class Rectangle
  include Area
  def initialize(l, h)
    @length = l
    @height = h
  end

  def sides
    [@length, @height]
  end
end

puts "Length and height of a rectangle: "
rectangle = gets.split
puts "Length of a square: "
square = gets.chomp.to_i
puts "Area of a rectangle: #{Rectangle.new(rectangle[0].to_i, rectangle[1].to_i).calculate}"
puts "Area of a square: #{Square.new(square).calculate}"
