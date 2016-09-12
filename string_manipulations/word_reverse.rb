string = "Hi! Joshua."
result = ""
string.split("").reverse_each { |c| result << c }
result = ''

#array iterate
arr = [1,2,3,4,5,6,7]
n = gets.to_i
k = gets.to_i
result = (k+1).upto(n-1).inject([]) {|r,n| r<<arr[n]}
0.upto(k) {|i| result << arr[i]}
p result

#array divide, reverse, and concat
arr = [1,2,3,4,5,6,7]
n = gets.to_i
k = gets.to_i
arr1 = arr[0..k].reverse
arr2 = arr[k+1..n-1].reverse
result = (arr1+arr2).reverse
p result
