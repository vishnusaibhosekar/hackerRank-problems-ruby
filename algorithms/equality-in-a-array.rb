# https://www.hackerrank.com/challenges/equality-in-a-array/problem
n = gets.to_i
arr = gets.chomp.split.map(&:to_i)

max = -1

arr.each do |i|
    max = [max, arr.count(i)].max
end

puts(arr.length - max)