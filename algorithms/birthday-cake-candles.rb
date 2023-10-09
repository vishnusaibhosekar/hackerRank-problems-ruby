# https://www.hackerrank.com/challenges/birthday-cake-candles/problem
n = gets

arr = gets.rstrip.split.map(&:to_i)
puts arr.count(arr.max)