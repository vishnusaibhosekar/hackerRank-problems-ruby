# https://www.hackerrank.com/challenges/mini-max-sum/problem
arr = gets.rstrip.split.map(&:to_i)

min = arr.sum - arr.max
max = arr.sum - arr.min

puts("#{min} #{max}")