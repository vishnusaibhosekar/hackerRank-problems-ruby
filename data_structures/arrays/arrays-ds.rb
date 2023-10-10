# https://www.hackerrank.com/challenges/arrays-ds/problem
n = gets.to_i
arr = gets.chomp.split.map(&:to_i)

puts(arr.reverse.join(" "))