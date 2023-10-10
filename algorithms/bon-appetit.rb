# https://www.hackerrank.com/challenges/bon-appetit/problem
n, k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

diff = gets.to_i - (arr.sum-arr[k])/2

puts( diff == 0 ? "Bon Appetit" : diff )