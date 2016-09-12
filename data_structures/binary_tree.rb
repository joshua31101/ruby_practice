class Node
  include Enumerable

  attr_accessor :data, :left, :right
  def initialize(data)
    @data = data
  end

  def each(&block)
    left.each(&block) if left
    block.call(self)
    right.each(&block) if right
  end

  def <=>(other_node)
    data <=> other_node.data
  end
end

root = Node.new(7)
root.left = Node.new(3)
root.right = Node.new(12)
root.each {|x| puts x.data}

puts root.inject(0) { |memo, node| memo += node.data }
puts root.sort.map (&:data)
