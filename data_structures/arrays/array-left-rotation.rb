# https://www.hackerrank.com/challenges/array-left-rotation/problem
n, r = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

r %= n

puts((arr[r..-1]+arr[0..r-1]).join(" "))