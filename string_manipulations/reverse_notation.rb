numStack = []
array = ["2", "1", "+", "3", "*"]
#array = ["4", "13", "5", "/", "+"]
array.each_index do |i|
  elem = array[i]
  if %w[/ * + -].include? elem
    n1 = numStack.pop.to_i
    n2 = numStack.pop.to_i
    case elem
    when '/' 
      result = n2/n1
    when '*'
      result = n2*n1
    when '+'
      result = n2+n1
    when '-'
      result = n2-n1
    end
    numStack.push(result)
  else
    numStack.push(elem)
  end
end
puts numStack.pop
