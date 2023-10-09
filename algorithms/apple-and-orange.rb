# https://www.hackerrank.com/challenges/apple-and-orange/problem
s, t = gets.chomp.split.map(&:to_i)
a, b = gets.chomp.split.map(&:to_i)
m, n = gets.chomp.split.map(&:to_i)
apples = gets.split(" ").map(&:to_i)
oranges = gets.split(" ").map(&:to_i)

apples = apples.map { |apple| apple + a }
oranges = oranges.map { |orange| orange + b }

puts apples.count { |apple| (s..t).include?(apple) }
puts oranges.count { |orange| (s..t).include?(orange) }