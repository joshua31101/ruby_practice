class LinkedQueue
  def initialize
    @head = nil
    @tail = nil
  end

  def enqueue(entry)
    node = Node.new(entry)
    if self.empty?
      @head, @tail = node, node
    else
      node.next = @head
      @head = node
    end
  end
  alias_method :"<<", :enqueue

  def dequeue
    return nil if empty?
    entry = front
    @tail = nil if @head == @tail
    @head = @head.next
    entry
  end

  def front
    return nil if empty?
    return @head.data
  end

  def empty?
    return @head.nil? && @tail.nil?
  end

  def clear
    @head, @tail = nil
  end

  def reverse!
    return nil if empty?
    temp_head = @tail
    while @head != @tail
      temp_tail = @head
      @head = @head.next
      temp_tail.next = temp_head.next
      temp_head.next = temp_tail
    end
    @tail = temp_tail
    @head = temp_head
  end

  private
  class Node
    attr_accessor :next, :data

    def initialize(data)
      @data = data
      @next = nil
    end
  end
end

queue = LinkedQueue.new
(1..1000000).each do |i|
  queue << i
end
queue.reverse!

while !queue.empty?
  puts "Taking #{queue.dequeue} out of queue."
end
