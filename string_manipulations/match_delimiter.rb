def is_valid?(str)
  stack = Array.new
  str.each_char do |c|
    if ['}', ']', ')'].include? c
      open_delimiter = stack.pop
      case c
      when '}'; match_delimiter = '{'
      when ']'; match_delimiter = '['
      when ')'; match_delimiter = '('
      end
      return false if open_delimiter != match_delimiter
    else
      stack.push(c)
    end
  end
  return true
end

p is_valid? "([])"
p is_valid? "{}()[]"
p is_valid? "[[(())}}"
p is_valid? "{)(]]"
p is_valid? "((((([[[[[]]]]])))))"
