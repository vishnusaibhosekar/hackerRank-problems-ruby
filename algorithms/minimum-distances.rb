# https://www.hackerrank.com/challenges/minimum-distances/problem
n = gets.to_i
arr = gets.chomp.split.map(&:to_i)

hash = {}
min = 10001

arr.each_with_index do |v, i|
    if !hash.key?(v)
        hash.store(v, i)
    else
        diff = i - hash[v]
        hash.store(v, diff)
        min = [min, diff].min
    end
end

puts min == 10001 ? -1 : min