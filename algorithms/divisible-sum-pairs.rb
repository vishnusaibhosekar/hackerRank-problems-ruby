# https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
n, k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
count = 0

(0..n-1).each do |i|
    (i+1..n-1).each do |j|
        count += 1 if (arr[i] + arr[j]) % k == 0
    end
end

puts(count)