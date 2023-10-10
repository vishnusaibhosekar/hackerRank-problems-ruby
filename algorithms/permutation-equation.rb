# https://www.hackerrank.com/challenges/permutation-equation/problem
n = gets.to_i
p = gets.chomp.split.map(&:to_i)

p_hash = Hash[(p).zip(1..n)]

(1..n).each do |i|
    puts p_hash[p_hash[i]]
end