# https://www.hackerrank.com/challenges/migratory-birds/problem
n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)

hash = {}

arr.each do |i|
    if hash.key?(i)
        hash[i] += 1
    else
        hash[i] = 1
    end
end

hash = hash.sort.to_h
max_value = hash.values.max

puts(hash.key(max_value))