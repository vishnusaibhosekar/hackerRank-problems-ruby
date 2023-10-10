# https://www.hackerrank.com/challenges/picking-numbers/problem
n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i).sort

hash = {}

arr.each do |i|
    if hash.key?(i)
        hash[i] += 1
    else
        hash[i] = 1
    end
end

max = 0

hash.each do |k, v|
    if hash.key?(k + 1)
        max = [max, v + hash[k + 1]].max
    else
        max = [max, v].max
    end
end

puts max