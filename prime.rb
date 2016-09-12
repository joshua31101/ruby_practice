require 'prime'

def prime?(number)
  2.upto(Math.sqrt(number).round) do |integer|
    return false if (number % integer).zero?
  end
  true
end

Prime.entries 10
n = gets.to_i
p (2..n).inject(1) {|p, i| p*=i}

n = gets.to_i
puts n*(n+1)/2
