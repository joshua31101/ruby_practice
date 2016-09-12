class ArrayStack
  def initialize(default_size = 20)
    @stack = Array.new(default_size)
    @top_index = -1
  end

  def push(data)
    @stack[@top_index += 1] = data
  end

  def pop
    raise "Stack is empty" if empty?
    data = @stack[@top_index]
    @top_index -= 1
    data
  end

  def peek
    raise "Stack is empty" if empty?
    top = nil
    top = @stack[@top_index] unless empty?
  end

  def empty?
    @top_index == -1
  end
end
