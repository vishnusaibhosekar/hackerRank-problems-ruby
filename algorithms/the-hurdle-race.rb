# https://www.hackerrank.com/challenges/the-hurdle-race/problem
n, k = gets.chomp.split.map(&:to_i)
height = gets.chomp.split.map(&:to_i)
max = height.max

puts(k > max ? 0 : max - k)