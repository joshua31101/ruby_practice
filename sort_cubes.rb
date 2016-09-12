class Cube
  def initialize(volume)
    @volume = volume
  end

  def volume
    @volume
  end

  def to_s
    "Volume: #{@volume}"
  end
end

array = []
array.push Cube.new(10)
array.push Cube.new(15)
array.push Cube.new(5)

array.sort! { |x, y| x.volume <=> y.volume }
puts array
