class LinkedStack
  def initialize
    @top_node = nil
  end

  def push(data)
    new_node = Node.new(data, @top_node)
    @top_node = new_node
  end
  alias_method :"<<", :push

  def pop
    raise "Stack is empty" if empty?
    top_data = peek
    @top_node = @top_node.next_node
    top_data
  end

  def peek
    raise "Stack is empty" if empty?
    top = nil
    if !empty?
      top = @top_node.data
    end
    top
  end

  def empty?
    @top_node == nil
  end

  def clear
    @top_node = nil
  end

  private
  class Node
    attr_accessor :data, :next_node

    def initialize(data, next_node)
      @data = data
      @next_node = next_node
    end
  end
end
