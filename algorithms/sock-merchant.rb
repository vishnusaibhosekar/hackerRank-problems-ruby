# https://www.hackerrank.com/challenges/sock-merchant/problem
n = gets.to_i
arr = gets.chomp.split.map(&:to_i)

hash = {}

arr.each do |i|
    if hash.key?(i)
        hash[i] += 1
    else
        hash[i] = 1
    end
end

count = 0

hash.each do |key, value|
    count += value / 2
end

puts count